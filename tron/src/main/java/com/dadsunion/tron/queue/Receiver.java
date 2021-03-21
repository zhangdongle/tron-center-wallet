package com.dadsunion.tron.queue;

import com.alibaba.fastjson.JSON;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronChainRecord;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.concurrent.CountDownLatch;

/**
 * 接收消息
 */
@Slf4j
public class Receiver {

	private CountDownLatch latch;

	@Autowired
	public Receiver(CountDownLatch countDownLatch) {
		this.latch = countDownLatch;
	}

	@Autowired
	private TronDelegate tronDelegate;

	public void receiveMessage(String message) {
		log.debug("message接收到消息了:{}", message);
		TronChainRecord chain = JSON.parseObject(message, TronChainRecord.class);
		tronDelegate.handleChainRecord(chain);
	}


	public void receiveMessage2(String message) {
		log.info("message2接收到消息了:{}", message);
	}

}