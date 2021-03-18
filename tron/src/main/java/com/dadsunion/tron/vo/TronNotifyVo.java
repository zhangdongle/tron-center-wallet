package com.dadsunion.tron.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class TronNotifyVo {

	private String requestNo; // 提现编号

	private String type; // 类型：recharge: 充值，withdraw：提现

	private String status; // 状态  HANDLING:处理中，SUCCESS:成功，FAILURE:失败

	private String hash; // hash值

	private String from; // 发起地址

	private String to; // 目标地址

	private BigDecimal trxFee; // 消耗的trx

	private long sendTime; // 发起时间

	private long chainTime; // 链上记录的时间

	private String message; // 描述信息

}
