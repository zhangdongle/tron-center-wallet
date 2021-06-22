package com.dadsunion.tron.constants;

import lombok.Data;

@Data
public class ChainType {

	public static final int TYPE_RECHARGE = 1; // 充值
	public static final int TYPE_WITHDRAW = 2; // 提现
	public static final int TYPE_COLLECT = 3; // 归集
	public static final int TYPE_CONSUME = 4; // 消耗

	public static final int CHAINTYPE_TRANSFER = 1;
	public static final int CHAINTYPE_TRC10 = 2;
	public static final int CHAINTYPE_TRC20 = 3;

	public static final String CHAINTYPE_TRANSFER_STR = "TransferContract";
	public static final String CHAINTYPE_TRC10_STR = "TransferAssetContract";
	public static final String CHAINTYPE_TRC20_STR = "TriggerSmartContract";

}
