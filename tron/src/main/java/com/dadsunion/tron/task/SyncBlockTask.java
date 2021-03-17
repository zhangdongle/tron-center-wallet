package com.dadsunion.tron.task;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.tron.config.RedisService;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronBlock;
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.domain.TronCoinType;
import com.dadsunion.tron.mapper.TronBlockMapper;
import com.dadsunion.tron.utils.TransformUtil;
import com.sunlight.tronsdk.SdkConfig;
import com.sunlight.tronsdk.TrxQuery;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisAccessor;
import org.springframework.stereotype.Component;
import org.tron.common.utils.ByteArray;
import org.tron.walletserver.WalletApi;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Slf4j
@Component("syncBlockTask")
public class SyncBlockTask {

	static {
		SdkConfig.getInstance().setNodeServer("https://api.nileex.io");
	}

	private BigInteger syncNumber = new BigInteger("5473639"); // 区块起始高度，如果数据库没有保存，以此值为默认值
	private final BigInteger maxSyncCount = new BigInteger("50");
	private final BigInteger lastSaveNumber = syncNumber;
	private final BigInteger minCount = new BigInteger("20");
	private final BigInteger buffer = new BigInteger("5");
	private BigInteger lastBlockHeight = syncNumber;
	public static Integer status = 0; // 开关，0.关闭，1.打开
	public static final Map<BigInteger, String> NEW_BLOCKCACHE = new HashMap<>();

	@Autowired
	private TronBlockMapper tronBlockMapper;

	@Autowired
	private RedisService redisService;

	public static void start() {
		synchronized (status) {
			status = 1;
		}
	}

	public static void stop() {
		synchronized (status) {
			status = 0;
		}
	}

	/**
	 * 定时任务，每秒钟1次
	 */
	void sync() {
		if (status == 0) {
			return;
		}

		// 获取系统当前区块高度
		TronBlock block = tronBlockMapper.selectOne(new QueryWrapper<>());
		if (block != null) {
			syncNumber = new BigInteger(block.getBlock().toString());
		}

		log.info("当前最新区块高度：%s，同步区块：%s", lastBlockHeight, syncNumber);
		if (syncNumber.compareTo(lastBlockHeight) >= 0) {
			return;
		} else if (syncNumber.add(buffer).compareTo(lastBlockHeight) > 0) {
			// 如果当前同步的区块，快到了最新的交易区块高度，则获取新的线上区块高度
			lastBlockHeight = getLastBlockHeight();
		}


		log.info("====> 扫描链上记录 TASK START!!");
		// 获取链上最新区块信息
		try {
			// 先从缓存获取区块信息
			String str = NEW_BLOCKCACHE.get(syncNumber);
			if (str != null) {
				NEW_BLOCKCACHE.remove(syncNumber);
			} else {
				str = TrxQuery.getBlockByHeight(syncNumber);
			}
			log.debug("区块高度：%s，详情：%s", syncNumber, str);
			JSONObject js = JSON.parseObject(str);
			JSONArray transactions = js.getJSONArray("transactions");
			Iterator it = transactions.iterator();
			for (int i = 0; i < transactions.size(); i++) {
				String hash = js.getString("txID");
				JSONObject trans = transactions.getJSONObject(i);
				JSONArray contracts = trans.getJSONObject("raw_data").getJSONArray("contract");
				if (contracts.size() > 1) {
					// 暂不清楚这里为什么会用list，可能有些交易涉及到多个合约，先不处理
					log.debug("多个合约记录的交易，hash：%s", hash);
				}
				JSONObject contract = contracts.getJSONObject(0);
				parseAndSyncData(hash, contract, str);
			}
			syncBlockHeight(block);
			syncNumber.add(BigInteger.ONE);
		} catch (Exception e) {
			log.error("扫描区块异常，高度：%s", syncNumber);
			log.error("扫描区块异常", e);
		}
	}

	private void syncBlockHeight(TronBlock block) {
		// 延迟存储
		// 延迟20个区块存储，避免频繁修改数据库
		if (syncNumber.add(minCount).compareTo(lastSaveNumber) < 0) {
			return;
		}
		// 更新数据库区块高度
		if (block == null) {
			block = new TronBlock();
			block.setBlock(syncNumber.longValue());
			tronBlockMapper.insert(block);
		} else {
			block.setBlock(syncNumber.longValue());
			tronBlockMapper.updateById(block);
		}
	}

	private void parseAndSyncData(String hash, JSONObject contract, String blockInfo) {
		// TRX主币
		JSONObject value = contract.getJSONObject("parameter").getJSONObject("value");

		String contractAddr = value.getString("contract_address");
		Map<String, TronCoinType> COIN_TYPES = TronDelegate.COIN_TYPES;
		if (!COIN_TYPES.containsKey(contractAddr)) {
			log.debug("当前合约不需要监听，%s", contractAddr);
			return;
		}
		String type = contract.getString("type");
		String symbol = COIN_TYPES.get(contractAddr).getSymbol();
		String from = value.getString("owner_address");
		String to = null;
		BigInteger amount = null;
		if ("TransferContract".equals(type)) {
			amount = value.getBigInteger("amount");
			to = value.getString("to_address");
		} else if ("TriggerSmartContract".equals(type)) {
			// tron代币
			String data = value.getString("data");
			String dataStr = data.substring(8);
			List<String> strList = TransformUtil.getStrList(dataStr, 64);
			if (strList.size() != 2) {
				return;
			}
			String to_address = TransformUtil.delZeroForNum(strList.get(0));
			if (!to_address.startsWith("41")) {
				to_address = "41" + to_address;
			}
			to = WalletApi.encode58Check(ByteArray.fromHexString(to_address));
			String amountStr = TransformUtil.delZeroForNum(strList.get(1));
			if (amountStr.length() > 0) {
				amount = new BigInteger(amountStr, 16);
			}
		} else {
			log.error("未知交易类型，hash: s%", hash);
			log.error("区块高度：%s，详情：%s", syncNumber, blockInfo);
			return;
		}
		TronChainRecord chain = new TronChainRecord();
		chain.setHash(hash);
		chain.setFrom(from);
		chain.setTo(to);
		chain.setAmount(amount);
		chain.setContractAddr(contractAddr);
		chain.setHeight(syncNumber.longValue());
		chain.setBlockInfo(blockInfo);
		chain.setSymbol(symbol);
		// 未防止数据丢失，将从链上获取的数据推送到redis消息队列当中
		// 同时也减轻了保存数据，堵塞链上数据的处理
		redisService.sendMessage("message", JSON.toJSONString(chain));
	}

	private BigInteger getLastBlockHeight() {
		try {
			String str = TrxQuery.getLatestBlock();
			log.info("最新区块数据", str);
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
