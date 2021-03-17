package com.dadsunion.tron.constants;

import lombok.Data;

@Data
public class WithdrawState {

	public static final int WAITING = 0;
	public static final int HANDLING = 1;
	public static final int SUCCESS = 2;
	public static final int FAILURE = 3;

	public static final String HANDLING_STR = "HANDLING";
	public static final String SUCCESS_STR = "SUCCESS";
	public static final String FAILURE_STR = "FAILURE";

}
