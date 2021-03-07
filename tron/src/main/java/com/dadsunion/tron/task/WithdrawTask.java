package com.dadsunion.tron.task;

import com.dadsunion.common.utils.StringUtils;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/**
 * 提现定时任务
 * 
 * @author ruoyi
 */
@Slf4j
@Component("withdrawTask")
public class WithdrawTask {
    public void ryMultipleParams(String s, Boolean b, Long l, Double d, Integer i) {
        System.out.println(StringUtils.format("执行多参方法： 字符串类型{}，布尔类型{}，长整型{}，浮点型{}，整形{}", s, b, l, d, i));
    }

    public void ryParams(String params) {
        System.out.println("执行有参方法：" + params);
    }

    public void withdrawNotify() {
        log.info("提现回调任务开始");
    }

    public void withdraw() {
        log.info("提现任务开始");
    }

    public void withdrawState() {
        log.info("扫描提现状态任务开始");
    }
}
