package com.dadsunion.tron.delegate;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.common.utils.StringUtils;
import com.dadsunion.common.utils.http.HttpUtils;
import com.dadsunion.tron.constants.*;
import com.dadsunion.tron.domain.*;
import com.dadsunion.tron.dto.WithdrawDto;
import com.dadsunion.tron.mapper.*;
import com.dadsunion.tron.vo.TronNotifyVo;
import com.sunlight.tronsdk.TrxQuery;
import com.sunlight.tronsdk.address.Address;
import com.sunlight.tronsdk.address.AddressHelper;

import com.sunlight.tronsdk.transaction.TransactionResult;
import com.sunlight.tronsdk.trc20.Trc20Helper;
import com.sunlight.tronsdk.trx.TrxHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class TronDelegate {
	@Autowired
	private TronAddressMapper addressMapper;
	@Autowired
	private TronChainRecordMapper chainRecordMapper;
	@Autowired
	private TronSystemAddressMapper systemAddressMapper;
	@Autowired
	private TronCoinTypeMapper coinTypeMapper;
	@Autowired
	private TronRechargeRecordMapper rechargeRecordMapper;
	@Autowired
	private TronWithdrawRecordMapper withdrawRecordMapper;
	@Autowired
	private TronCollectRecordMapper collectRecordMapper;

	@Value("${system.notify.url}")
	private String notifyUrl;

	@Value("${system.white-ip}")
	private String whiteIp;

	public static final Map<String, TronCoinType> COIN_CONTRACT = new HashMap<>(); // 所有代币地址 -> contractAddr 键值对
	public static final Map<String, TronCoinType> COIN_SYMBOL = new HashMap<>(); // 所有代币地址 -> symbol 键值对

	@PostConstruct
	public void init() {
		// 查询所有的币种，初始化
		List<TronCoinType> list = coinTypeMapper.selectList(null);
		if (list.size() > 0) {
			list.stream().forEach(o -> {
				COIN_SYMBOL.put(o.getSymbol(), o);
				COIN_CONTRACT.put(o.getContractAddr(), o);
			});
		}
	}

	/**
	 * 归集
	 * @param tcr
	 */
	public void collect(TronCollectRecord tcr) {
		// 将充值进来的代币，发起转账到冷钱包
		// 查询冷钱包地址
		TronSystemAddress coldAddress = getSystemAddress("cold");

		TronCoinType coinType = COIN_SYMBOL.get(tcr.getSymbol());
		// 获取充值地址的私钥
		String to = tcr.getToAddr();
		TronAddress tronAddress = getAddress(to);
		BigInteger amount = convert(tcr.getSymbol(), tcr.getAmount());

		// 添加一条链上记录
		TronChainRecord chainRecord = new TronChainRecord();
		chainRecord.setFromAddr(to);
		chainRecord.setToAddr(coldAddress.getAddress());
		chainRecord.setRelatedId(tcr.getId());
		chainRecord.setAmount(amount);
		chainRecord.setRemark("用户提币");

		try {
			log.info("归集发起,from:%s,to:%s,amount:%s", to, coldAddress.getAddress(), amount);
			TransactionResult result = transfer(tronAddress.getSecretkey(), coldAddress.getAddress(), coinType,
					new BigDecimal(amount));

			// 修改提现状态
			tcr.setCollectChainId(chainRecord.getId());
			// 如果发起成功，则修改状态为已发起
			tcr.setState(CollectState.COLLECTING);

			if (result.getResult()) {
				// 链上插入一条执行记录
				chainRecord.setState(ChainState.SENT);
				chainRecord.setHash(result.getHash());
			} else {
				// 链上插入一条执行记录
				chainRecord.setState(ChainState.FAIL);
				chainRecord.setErrMsg(result.getMessage());
			}
			collectRecordMapper.updateById(tcr);
		} catch (Exception e) {
			log.error("提币异常", e);
			// 修改提现记录为失败
			// 记录链上数据，并排查
			// 链上插入一条执行记录
			chainRecord.setState(ChainState.FAIL);
			chainRecord.setErrMsg("未知异常");
		} finally {
			chainRecordMapper.insert(chainRecord);
		}
	}

	public TransactionResult transfer(String fromSecretKey, String to, TronCoinType coinType, BigDecimal amount)
			throws Exception {
		TransactionResult result = null;
		// 是否是主链
		if (coinType.getType() == ChainType.CHAINTYPE_TRANSFER) {
			result = TrxHelper.transfer(fromSecretKey, to, amount);
			log.info("普通转账->请求结果：{}", result);
		} else if (coinType.getType() == ChainType.CHAINTYPE_TRC10) {
			result = Trc20Helper.transfer(fromSecretKey, to, amount, coinType.getContractAddr(), 5000l);
			log.info("TRC10转账->请求结果：{}", JSON.toJSONString(result));
		} else if (coinType.getType() == ChainType.CHAINTYPE_TRC10) {
			result = Trc20Helper.transfer(fromSecretKey, to, amount, coinType.getContractAddr(), 5000l);
			log.info("TRC20转账->请求结果", JSON.toJSONString(result));
		} else {
			log.error("未知的交易类型，type:%s", coinType.getType());
		}
		return result;
	}

	/**
	 * 提现回调任务
	 */
	public void withdrawNotify(TronWithdrawRecord twr, TronChainRecord chain) {
		if (StringUtils.isEmpty(notifyUrl)) {
			return;
		}
		TronNotifyVo notify = new TronNotifyVo();
		notify.setHash(chain.getHash());
		notify.setFrom(chain.getFromAddr());
		notify.setTo(chain.getToAddr());
		notify.setSendTime(chain.getCreateTime().getTime());
		notify.setTrxFee(chain.getTrxFee());
		notify.setChainTime(chain.getChainTime().getTime());
		if (twr.getState() == WithdrawState.HANDLING) {
			notify.setStatus(WithdrawState.HANDLING_STR);
		} else if (twr.getState() == WithdrawState.SUCCESS) {
			notify.setStatus(WithdrawState.SUCCESS_STR);
		} else if (twr.getState() == WithdrawState.FAILURE) {
			notify.setStatus(WithdrawState.FAILURE_STR);
			notify.setMessage(chain.getErrMsg());
		}
		String params = JSON.toJSONString(notify);
		// 修改通知状态
		log.info("回调信息，json:%s", params);
		String result = HttpUtils.sendPost(notifyUrl, params);
		log.info("回调结果：%s", result);
		if ("SUCCESS".equals(result)) {
			twr.setNotifySt(NotifyState.SUCCESS);
		} else {
			twr.setNotifySt(NotifyState.FAILURE);
		}
		withdrawRecordMapper.updateById(twr);
	}

	/**
	 * 充值回调任务
	 */
	public void rechargeNotify(TronRechargeRecord trr, TronChainRecord chain) {
		if (StringUtils.isEmpty(notifyUrl)) {
			return;
		}
		TronNotifyVo notify = new TronNotifyVo();
		notify.setHash(chain.getHash());
		notify.setFrom(chain.getFromAddr());
		notify.setTo(chain.getToAddr());
		notify.setSendTime(chain.getCreateTime().getTime());
		notify.setTrxFee(chain.getTrxFee());
		notify.setChainTime(chain.getChainTime().getTime());
		if (trr.getState() == WithdrawState.HANDLING) {
			notify.setStatus(WithdrawState.HANDLING_STR);
		} else if (trr.getState() == WithdrawState.SUCCESS) {
			notify.setStatus(WithdrawState.SUCCESS_STR);
		} else if (trr.getState() == WithdrawState.FAILURE) {
			notify.setStatus(WithdrawState.FAILURE_STR);
			notify.setMessage(chain.getErrMsg());
		}
		String params = JSON.toJSONString(notify);
		// 修改通知状态
		log.info("回调信息，json:%s", params);
		String result = HttpUtils.sendPost(notifyUrl, params);
		log.info("回调结果：%s", result);
		if ("SUCCESS".equals(result)) {
			trr.setNotifySt(NotifyState.SUCCESS);
		} else {
			trr.setNotifySt(NotifyState.FAILURE);
		}
		rechargeRecordMapper.updateById(trr);
	}

	@Transactional(rollbackFor = Exception.class)
	public void handleChainRecord(TronChainRecord chain) {

		// 查询链上是否已经存在该记录
		QueryWrapper<TronChainRecord> query = new QueryWrapper<>();
		query.eq("hash", chain.getHash());
		List<TronChainRecord> list = chainRecordMapper.selectList(query);
		// 除了充值记录，其他都会在tron_chain_record表中找到hash
		// 判断是充值还是提现
		if (list.size() > 0) {
			if (list.size() == 2) {
				// 一个hash可能会同时出现2条记录
				// 原因：内部转账，提现产生的hash和另一个地址充值产生的hash是同一个
				// 如果存在2条记录，则代表该记录已经处理过，不用处理
				return;
			} else if (list.size() == 1) {
				TronChainRecord tcr = list.get(0);
				// 判断该记录是否已经处理过
				if (tcr.getState() != ChainState.SENT) {
					log.debug("该记录已经处理过：{}", chain.getHash());
					return;
				}

				// 如果存在一条记录，查看该记录是否是提币记录
				// 看该记录是否已经处理成功
				chain.setId(tcr.getId());
				if (ChainState.SENT == tcr.getState()) {
					// 已发送代表是提币记录
					// 判断该提币记录是否提到的是本系统其他地址，如果是的话，需要添加一条充值记录
					TronAddress ta = getAddress(chain.getToAddr());
					if (ta != null) {
						handleRechargeState(chain);
						handleWithdrawState(tcr, chain);
					} else {
						// 判断是归集业务还是提币业务
						handleOtherState(tcr, chain);
					}
				} else {
					// 如果是充值记录
					// 则表示已经处理过来，充值记录如果不是内部转账，则只有一条记录
					return;
				}
			}
		} else {

			// 确认地址是否为系统用户地址
			TronAddress address = getAddress(chain.getToAddr());
			if (address == null) {
				log.debug("不是平台钱包地址：{}", chain.getToAddr());
				return;
			}
			// 如果系统不存在记录，则表示该笔交易为充值
			handleRechargeState(chain);
		}
	}

	public TronAddress getAddress(String address) {
		QueryWrapper<TronAddress> q1 = new QueryWrapper<>();
		q1.eq("address", address);
		return addressMapper.selectOne(q1);
	}

	private BigDecimal convert(String symbol, BigInteger amount) {
		TronCoinType coinType = COIN_SYMBOL.get(symbol);
		return new BigDecimal(amount).movePointLeft(coinType.getScale());
	}

	@Transactional(rollbackFor = Exception.class)
	public void handleOtherState(TronChainRecord old, TronChainRecord chain) {
		if (ChainType.TYPE_WITHDRAW == old.getType()) {
			handleWithdrawState(old, chain);
		} else if (ChainType.TYPE_COLLECT == old.getType()) {
			handleCollectState(old, chain);
		}
	}

	@Transactional(rollbackFor = Exception.class)
	public void handleRechargeState(TronChainRecord chain) {

		// 换算金额
		BigDecimal amount = convert(chain.getSymbol(), chain.getAmount());

		// 添加充值记录和状态
		TronRechargeRecord recharge = new TronRechargeRecord();
		recharge.setAmount(amount);
		recharge.setChainId(chain.getId());
		recharge.setFromAddr(chain.getFromAddr());
		recharge.setToAddr(chain.getToAddr());
		recharge.setState(RechargeState.COLLECT_PENDING);
		recharge.setSymbol(chain.getSymbol());
		rechargeRecordMapper.insert(recharge);

		// 添加链上记录
		chain.setState(ChainState.SUCCESS);
		chain.setRemark("充值");
		chain.setRelatedId(recharge.getId());
		chain.setType(ChainType.TYPE_RECHARGE);
		chainRecordMapper.insert(chain);

		recharge.setChainId(chain.getId());
		rechargeRecordMapper.updateById(recharge);

		TronSystemAddress tsa = getSystemAddress("cold");
		// 添加归集记录
		TronCollectRecord collect = new TronCollectRecord();
		collect.setAmount(amount);
		collect.setFromAddr(chain.getFromAddr());
		collect.setToAddr(tsa.getAddress());
		collect.setSymbol(chain.getSymbol());
		collect.setRechargeChainId(chain.getId());
		collect.setState(CollectState.PENDING);
		collect.setRechargeId(recharge.getId());
		collectRecordMapper.insert(collect);
	}

	@Transactional(rollbackFor = Exception.class)
	public void handleCollectState(TronChainRecord old, TronChainRecord chain) {

		// 修改链上状态
		old.setState(ChainState.SUCCESS);
		old.setHeight(chain.getHeight());
		old.setBlockInfo(chain.getBlockInfo());
		chainRecordMapper.updateById(old);

		// 修改归集状态
		TronCollectRecord collect = new TronCollectRecord();
		collect.setId(old.getRelatedId());
		collect.setState(WithdrawState.SUCCESS);
		collectRecordMapper.updateById(collect);

		// 修改充值的归集状态
		TronRechargeRecord recharge = new TronRechargeRecord();
		collect = collectRecordMapper.selectById(collect.getId());
		recharge.setId(collect.getRechargeId());
		recharge.setState(RechargeState.COLLECTED);
		rechargeRecordMapper.updateById(recharge);

	}

	@Transactional(rollbackFor = Exception.class)
	public void handleWithdrawState(TronChainRecord old, TronChainRecord chain) {
		// 修改链上状态
		old.setState(ChainState.SUCCESS);
		old.setHeight(chain.getHeight());
		old.setBlockInfo(chain.getBlockInfo());
		old.setBandwidth(chain.getBandwidth());
		old.setEnergy(chain.getEnergy());
		old.setTrxFee(chain.getTrxFee());
		old.setChainTime(chain.getChainTime());
		chainRecordMapper.updateById(old);

		// 修改提现状态
		TronWithdrawRecord withdraw = new TronWithdrawRecord();
		withdraw.setId(old.getRelatedId());
		withdraw.setState(WithdrawState.SUCCESS);
		withdrawRecordMapper.updateById(withdraw);

	}

	private BigInteger convert(String symbol, BigDecimal amount) {
		TronCoinType coinType = getCoinType(symbol);
		return amount.movePointRight(coinType.getScale()).toBigIntegerExact();
	}

	public void withdraw(WithdrawDto dto) {
		// 保存提现请求数据
		TronWithdrawRecord withdraw = new TronWithdrawRecord();
		withdraw.setRequestNo(dto.getRequestNo());
		withdraw.setAmount(dto.getAmount());
		withdraw.setSymbol(dto.getSymbol());
		withdraw.setFromAddr(dto.getFromAddress());
		withdraw.setToAddr(dto.getToAddress());
		withdraw.setState(WithdrawState.WAITING);
		withdrawRecordMapper.insert(withdraw);
	}


	/**
	 * 根据类型获取系统地址
	 * @param type cold，冷钱包地址，withdraw，提币地址，consume，消耗地址
	 * @return
	 */
	public TronSystemAddress getSystemAddress(String type) {
		QueryWrapper<TronSystemAddress> query = new QueryWrapper<>();
		query.eq("type", type);
		TronSystemAddress address = systemAddressMapper.selectOne(query);
		return address;
	}

	/**
	 * 根据币种符号查询币种信息，币种符号唯一
	 * @param symbol
	 * @return
	 */
	public TronCoinType getCoinType(String symbol) {
		QueryWrapper<TronCoinType> query = new QueryWrapper<>();
		query.eq("symbol", symbol);
		TronCoinType coinType = coinTypeMapper.selectOne(query);
		return coinType;
	}

	/**
	 * 链上处理
	 *
	 * @param twr
	 */
	@Transactional(rollbackFor = Exception.class)
	public void withdrawOnChain(TronWithdrawRecord twr) {
		if (twr.getState() != WithdrawState.WAITING) {
			return;
		}
		TronSystemAddress systemAddr = getSystemAddress("withdraw");
		TronCoinType coinType = COIN_SYMBOL.get(twr.getSymbol());
		BigInteger amount = convert(twr.getSymbol(), twr.getAmount());

		TronChainRecord chainRecord = new TronChainRecord();
		chainRecord.setFromAddr(systemAddr.getAddress());
		chainRecord.setToAddr(twr.getToAddr());
		chainRecord.setRelatedId(twr.getId());
		chainRecord.setAmount(amount);
		chainRecord.setContractAddr(coinType.getContractAddr());
		chainRecord.setSymbol(coinType.getSymbol());
		chainRecord.setRemark("用户提币");
		chainRecord.setType(2); //
		chainRecord.setChainType(coinType.getType());
		try {
			log.info("提币发起,from:{},to:{},amount:{}", systemAddr.getAddress(), twr.getToAddr(), twr.getAmount());
			TransactionResult result = transfer(systemAddr.getPrivateKey(), twr.getToAddr(), coinType, twr.getAmount());

			// 如果发起成功，则修改状态为已发起
			twr.setState(WithdrawState.HANDLING);
			if (result.getResult()) {
				// 修改提现状态
				// 链上插入一条执行记录
				chainRecord.setState(ChainState.SENT);
				chainRecord.setHash(result.getHash());
			} else {
				// 链上插入一条执行记录
				chainRecord.setState(ChainState.FAIL);
				chainRecord.setErrMsg(result.getMessage());
				log.error("转账请求失败：{}", result.getMessage());
			}
		} catch (Exception e) {
			// 参数异常，则修改提现表状态
			if ("invalid input".equals(e.getMessage())) {
				log.error("提币异常=>参数异常，{}", twr.getFromAddr());
				// 链上插入一条执行记录
				twr.setState(WithdrawState.FAILURE);
				twr.setErrMsg("请求异常，请检查参数");
				withdrawRecordMapper.updateById(twr);
				chainRecord.setState(ChainState.FAIL);
				chainRecord.setErrMsg("参数异常，" + e.getMessage());
			} else {
				log.error("提币异常", e);
				chainRecord.setState(ChainState.FAIL);
				chainRecord.setErrMsg("未知异常，" + e.getMessage());
			}
			// 修改提现记录为失败
			// 记录链上数据，并排查
			// 链上插入一条执行记录

		} finally {
			chainRecordMapper.insert(chainRecord);
			twr.setChainId(chainRecord.getId());
			withdrawRecordMapper.updateById(twr);
		}
	}

	/**
	 * 通过交易hash查询链上状态
	 * 如果成功则修改状态并保存交易信息
	 *
	 * @param hash
	 */
	public void checkChainResultByHash(String hash) {
		String data = null;
		try {
			data = TrxQuery.getTransactionById(hash);
		} catch (Exception e) {
			log.error("获取交易信息异常", e);
		}
		if (null != data) {
			JSONObject js = JSON.parseObject(data);
			String result = js.getJSONObject("ret").getString("contractRet");
			QueryWrapper<TronChainRecord> query = new QueryWrapper<>();
			query.eq("hash", hash);
			TronChainRecord record = new TronChainRecord();
			if ("SUCCESS".equals(result)) {
				record.setState(2);
				record.setBlockInfo(data);
				chainRecordMapper.update(record, query);
				// 回调给服务器
			} else if ("FAIL".equals(result)) {
				record.setState(3);
				record.setBlockInfo(data);
				record.setErrMsg("");
				chainRecordMapper.update(record, query);
			}
		}

	}

	/**
	 * 创建钱包地址
	 * @param userId
	 * @return
	 */
	public String createAddress(String userId) {
		Address address = AddressHelper.newAddress();
		// 保存到本地数据库
		TronAddress tronAddress = new TronAddress();
		tronAddress.setUserId(userId);
		tronAddress.setAddress(address.getAddress());
		tronAddress.setSecretkey(address.getPrivateKey());
		tronAddress.setActivated(0);// 默认没有激活
		addressMapper.insert(tronAddress);
		return address.getAddress();
	}

}