package com.dadsunion.tron.vo;

import lombok.Data;

import java.math.BigInteger;

@Data
public class ScanBlockVo {

	private BigInteger lastBlockHeight;

	private BigInteger syncBlockHeight;
}
