package com.dadsunion.tron.task;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.common.utils.StringUtils;

import com.dadsunion.tron.constants.NotifyState;
import com.dadsunion.tron.constants.WithdrawState;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.domain.TronWithdrawRecord;
import com.dadsunion.tron.mapper.TronChainRecordMapper;
import com.dadsunion.tron.mapper.TronWithdrawRecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * 提现定时任务
 *
 * @author ruoyi
 */
@Slf4j
@Component("withdrawTask")
public class WithdrawTask {

	@Autowired
	private TronWithdrawRecordMapper withdrawRecordMapper;

	@Autowired
	private TronChainRecordMapper chainRecordMapper;

	@Autowired
	private TronDelegate tronDelegate;

	/**
	 * 提现状态回调任务发起
	 */
	public void withdrawNotify() {
		log.info("提现回调任务开始");
		// 查询所有处理完成并且未回调成功的记录
		QueryWrapper<TronWithdrawRecord> query = new QueryWrapper<>();
		query.in("state", WithdrawState.FAILURE, WithdrawState.SUCCESS);
		query.eq("notify_st", NotifyState.PENDING);
		List<TronWithdrawRecord> list = withdrawRecordMapper.selectList(query);
		for (TronWithdrawRecord withdraw : list) {
			try {
				TronChainRecord chain = chainRecordMapper.selectById(withdraw.getChainId());
				tronDelegate.withdrawNotify(withdraw, chain);
			} catch (Exception e) {
				log.error("回调任务异常", e);
			}
		}
	}

	/**
	 * 提现发起任务
	 */
	public void withdraw() {
		log.info("提现任务开始");
		QueryWrapper<TronWithdrawRecord> query = new QueryWrapper<>();
		query.eq("state", WithdrawState.WAITING);
		List<TronWithdrawRecord> list = withdrawRecordMapper.selectList(query);
		for (TronWithdrawRecord twr : list) {
			try {
				log.info("发起提现, json:%s", JSON.toJSONString(twr));
				tronDelegate.withdrawOnChain(twr);
			} catch (Exception e) {
				log.error("提现发起任务异常", e);
			}
		}
	}

}
