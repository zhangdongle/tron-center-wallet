package com.dadsunion.tron.task;

import java.math.BigInteger;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.dadsunion.common.utils.spring.SpringUtils;
import com.dadsunion.tron.config.RedisService;
import com.dadsunion.tron.constants.ChainType;
import com.dadsunion.tron.constants.SysConstant;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronBlock;
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.domain.TronCoinType;
import com.dadsunion.tron.mapper.TronBlockMapper;
import com.sunlight.tronsdk.SdkConfig;
import com.sunlight.tronsdk.TrxQuery;
import com.sunlight.tronsdk.address.AddressHelper;
import com.sunlight.tronsdk.trc20.decode.TransferMessage;
import com.sunlight.tronsdk.trc20.decode.Trc20DataDecoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.ResourceAccessException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component("syncBlockTask")
public class SyncBlockTask {

	static {
		SdkConfig.getInstance().setNodeServer("https://api.nileex.io");
	}

	private BigInteger startSync = null;
	private static BigInteger syncNumber = new BigInteger("14348734"); // 区块起始高度，如果数据库没有保存，以此值为默认值
	private final BigInteger maxSyncCount = new BigInteger("50");
	private static BigInteger lastSaveNumber = syncNumber;
	private final BigInteger minCount = new BigInteger("20");
	private final BigInteger buffer = new BigInteger("5");
	private static BigInteger lastBlockHeight = syncNumber;
	public static Integer status = 1; // 开关，0.关闭，1.打开
	public static final Map<BigInteger, String> NEW_BLOCKCACHE = new HashMap<>();

	@Autowired
	private TronBlockMapper tronBlockMapper;

	@Autowired
	private RedisService redisService;

	/**
	 * 获取当前区块高度
	 * 
	 * @return
	 */
	public static BigInteger getSyncNumber() {
		// 获取当前区块同步高度
		return syncNumber;
	}

	/**
	 * 获取最新区块高度
	 * 
	 * @return
	 */
	public static BigInteger getlastBlockHeight() {
		return lastBlockHeight;
	}

	public static void start() {
		TronBlockMapper tronBlockMapper = SpringUtils.getBean(TronBlockMapper.class);
		TronBlock block = tronBlockMapper.selectOne(new QueryWrapper<>());
		synchronized (status) {
			status = 1;
			// 获取系统当前区块高度
			if (block != null) {
				syncNumber = new BigInteger(block.getBlock().toString());
			}
			log.info("区块扫描启动");
		}
	}

	public static void stop() {
		synchronized (status) {
			status = 0;
			log.info("区块扫描暂停");
		}
	}

	@PostConstruct
	public void init() {
		lastBlockHeight = getLastBlockHeight();
	}

	/**
	 * 定时任务，每秒钟1次
	 */
	public void sync() {
		synchronized (status) {
			if (status == 0) {
				return;
			}
		}

		if (startSync == null) {
			// 获取系统当前区块高度
			TronBlock block = tronBlockMapper.selectOne(new QueryWrapper<>());
			if (block != null) {
				syncNumber = new BigInteger(block.getBlock().toString());
			}
			startSync = syncNumber;
		}

		log.info("当前最新区块高度：{}，同步区块：{}", lastBlockHeight, syncNumber);
		if (syncNumber.compareTo(lastBlockHeight) > 0) {
			lastBlockHeight = getLastBlockHeight();
			try {
				log.info("太快了，休息3秒");
				Thread.sleep(3000);
			} catch (Exception e) {
				log.error("扫描异常", e);
			}
			return;
		} else if (syncNumber.add(buffer).compareTo(lastBlockHeight) > 0) {
			// 如果当前同步的区块，快到了最新的交易区块高度，则获取新的线上区块高度
			lastBlockHeight = getLastBlockHeight();
		}

		// log.info("====> 扫描链上记录 TASK START!!");
		// 获取链上最新区块信息
		try {
			// 先从缓存获取区块信息
			String str = NEW_BLOCKCACHE.get(syncNumber);
			if (str != null) {
				NEW_BLOCKCACHE.remove(syncNumber);
			} else {
				str = TrxQuery.getBlockByHeight(syncNumber);
			}
			log.debug("区块高度：{}，详情：{}", syncNumber, str);
			JSONObject js = JSON.parseObject(str);
			JSONArray transactions = js.getJSONArray("transactions");
			if (transactions == null) {
				log.error("未找到交易信息，区块高度{}，详情：{}", syncNumber, str);
			} else {
				for (int i = 0; i < transactions.size(); i++) {
					JSONObject trans = transactions.getJSONObject(i);
					parseAndSyncData(trans, trans.toJSONString());
				}
			}
			syncBlockHeight();
			syncNumber = syncNumber.add(BigInteger.ONE);

		} catch (ResourceAccessException e) {
			log.error("区块高度{}，网络异常{}", syncNumber, e.getMessage());
		} catch (UnknownHostException e) {
			log.error("区块高度{}，网络异常{}", syncNumber, e.getMessage());
		} catch (Exception e) {
			log.error("扫描区块异常，高度：{}", syncNumber);
			log.error("扫描区块异常", e);
		}
	}

	private void syncBlockHeight() {
		// 延迟存储
		// 延迟20个区块存储，避免频繁修改数据库
		if (syncNumber.compareTo(lastSaveNumber.add(minCount)) < 0) {
			return;
		}
		// 更新数据库区块高度
		// if (block == null) {
		// block = new TronBlock();
		// block.setBlock(syncNumber.longValue());
		// tronBlockMapper.insert(block);
		// } else {
		TronBlock block = new TronBlock();
		block.setBlock(syncNumber.longValue());
		UpdateWrapper<TronBlock> query = new UpdateWrapper<>();
		query.isNotNull("block");
		tronBlockMapper.update(block, query);
		lastSaveNumber = syncNumber;
		// }
	}

	private void parseAndSyncData(JSONObject trans, String blockInfo) {
		String hash = trans.getString("txID");
		JSONObject rawData = trans.getJSONObject("raw_data");
		JSONArray contracts = rawData.getJSONArray("contract");
		if (contracts.size() > 1) {
			// 暂不清楚这里为什么会用list，可能有些交易涉及到多个合约，先不处理
			log.debug("多个合约记录的交易，hash：{}", hash);
		}
		JSONObject contract = contracts.getJSONObject(0);

		// TRX主币
		JSONObject value = contract.getJSONObject("parameter").getJSONObject("value");

		String type = contract.getString("type");
		String from = value.getString("owner_address");
		String to = null;
		Integer chainType = 0;
		Date chainTime = rawData.getDate("expiration");
		BigInteger amount = null;

		String contractAddr = null;

		if (ChainType.CHAINTYPE_TRANSFER_STR.equals(type)) {
			amount = value.getBigInteger("amount");
			to = value.getString("to_address");
			chainType = ChainType.CHAINTYPE_TRANSFER;
			// 转换地址编码
			to = AddressHelper.addressHexToBase58(to);
		} else if (ChainType.CHAINTYPE_TRC20_STR.equals(type)) {
			// tron代币
			String data = value.getString("data");
			try {
				TransferMessage bo = Trc20DataDecoder.decode(data);
				to = bo.getTo();
				amount = bo.getValue();
			} catch (Exception e) {
				log.error("TRC20转换异常", e);
				return;
			}
			// String dataStr = data.substring(8);
			// List<String> strList = TransformUtil.getStrList(dataStr, 64);
			// if (strList.size() != 2) {
			// return;
			// }
			// to = TransformUtil.delZeroForNum(strList.get(0));
			// if (!to.startsWith("41")) {
			// to = "41" + to;
			// }
			// String amountStr = TransformUtil.delZeroForNum(strList.get(1));
			// if (amountStr.length() > 0) {
			// amount = new BigInteger(amountStr, 16);
			// }
			contractAddr = value.getString("contract_address");
			contractAddr = AddressHelper.addressHexToBase58(contractAddr);
			chainType = ChainType.CHAINTYPE_TRC20;
		} else if (ChainType.CHAINTYPE_TRC10_STR.equals(type)) {
			// tron1.0代币
			amount = value.getBigInteger("amount");
			to = value.getString("to_address");
			contractAddr = value.getString("asset_name");
			chainType = ChainType.CHAINTYPE_TRC10;
			// 转换地址编码
			to = AddressHelper.addressHexToBase58(to);
		} else {
			log.error("未知交易类型，hash: {}", hash);
			log.error("区块高度：{}，详情：{}", syncNumber, blockInfo);
			return;
		}
		from = AddressHelper.addressHexToBase58(from);
		Map<String, TronCoinType> COIN_TYPES = TronDelegate.COIN_CONTRACT;
		if (!COIN_TYPES.containsKey(contractAddr)) {
			log.debug("当前合约不需要监听，{}", contractAddr);
			return;
		}

		String symbol = COIN_TYPES.get(contractAddr).getSymbol();

		TronChainRecord chain = new TronChainRecord();
		chain.setHash(hash);
		chain.setChainType(chainType);
		chain.setFromAddr(from);
		chain.setToAddr(to);
		chain.setAmount(amount);
		chain.setContractAddr(contractAddr);
		chain.setHeight(syncNumber.longValue());
		chain.setBlockInfo(blockInfo);
		chain.setSymbol(symbol);
		chain.setChainTime(chainTime);
		// 未防止数据丢失，将从链上获取的数据推送到redis消息队列当中
		// 同时也减轻了保存数据，堵塞链上数据的处理
		redisService.sendMessage(SysConstant.CHANNEL_CHAIN, chain);
	}

	private BigInteger getLastBlockHeight() {
		try {
			String str = TrxQuery.getLatestBlock();
			log.debug("最新区块数据，json:{}", str);
			BigInteger height = JSON.parseObject(str).getJSONObject("block_header").getJSONObject("raw_data")
					.getBigInteger("number");
			NEW_BLOCKCACHE.put(height, str);
			return height;
		} catch (Exception e) {
			log.error("获取最新区块高度异常", e);
			return syncNumber;
		}
	}

}
