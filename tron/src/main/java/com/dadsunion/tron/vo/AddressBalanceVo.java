package com.dadsunion.tron.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class AddressBalanceVo {

	private String symbol;

	private BigDecimal amount;

}
