package com.dadsunion.tron.task;

import com.dadsunion.tron.service.ITronRechargeRecordService;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/**
 * 提现定时任务
 * 
 * @author ruoyi
 */
@Slf4j
@Component("rechargeTask")
public class RechargeTask {

    private ITronRechargeRecordService rechargeService;

    /**
     * 充值回调任务
     */
    public void rechargeNotify() {
        log.info("充值回调任务开始");
        // 查询所有充值并且未回调通知的记录
    }

}
