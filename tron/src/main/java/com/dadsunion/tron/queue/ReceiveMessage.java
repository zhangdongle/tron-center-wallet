package com.dadsunion.tron.queue;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.tron.constants.ChainState;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.domain.TronRechargeRecord;
import com.dadsunion.tron.mapper.TronAddressMapper;
import com.dadsunion.tron.mapper.TronChainRecordMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/**
 * 接收消息
 */
@Slf4j
public class ReceiveMessage {

	private CountDownLatch latch;

	@Autowired
	public ReceiveMessage(CountDownLatch countDownLatch) {
		this.latch = countDownLatch;
	}

	@Autowired
	private TronDelegate tronDelegate;

	public void receiveMessage(Serializable message) {
		log.info("message接收到消息了:{}", message);
		TronChainRecord chain = JSON.parseObject(JSON.toJSONString(message), TronChainRecord.class);
		tronDelegate.handleChainRecord(chain);
	}


	public void receiveMessage2(Serializable message) {
		log.info("message2接收到消息了:{}", message);
	}

}