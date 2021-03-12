package com.dadsunion.tron.task;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.common.utils.StringUtils;

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

	public void withdrawNotify() {
		log.info("提现回调任务开始");
	}

	public void withdraw() {
		log.info("提现任务开始");
		QueryWrapper<TronWithdrawRecord> query = new QueryWrapper<>();
		query.eq("state","");
		List<TronWithdrawRecord> list = withdrawRecordMapper.selectList(query);
	}

	public void withdrawState() {
		log.info("扫描提现状态任务开始");
	}
}
