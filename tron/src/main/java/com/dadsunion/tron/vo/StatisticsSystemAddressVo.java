package com.dadsunion.tron.vo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Map;

@Data
public class StatisticsSystemAddressVo {

	private Map<String, AddressBalanceVo> cold; // 冷钱包

	private Map<String, AddressBalanceVo> withdraw; // 提现钱包

	private Map<String, AddressBalanceVo> consume; // 消耗钱包

}
