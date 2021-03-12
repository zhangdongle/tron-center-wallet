package com.dadsunion.tron.constants;

import lombok.Data;

@Data
public class WithdrawContant {

	private static final Integer WAITING = 0;
	private static final Integer HANDLING = 1;
	private static final Integer SUCCESS = 2;
	private static final Integer FAILURE = 3;

}
