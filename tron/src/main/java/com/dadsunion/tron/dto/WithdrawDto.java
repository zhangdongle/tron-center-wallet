package com.dadsunion.tron.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
public class WithdrawDto {

	/**
	 * 请求编号，唯一，不可重复提交
	 */
	@Length(max = 32)
	@NotNull
	@ApiModelProperty("请求编号，唯一，最长32位，不可重复提交，建议使用UUID")
	private String requestNo;

	/**
	 * 用户ID，标识
	 */
	@Length(max = 32)
	@NotNull
	@ApiModelProperty("用户ID，标识")
	private String userId;

	/**
	 * 提币地址
	 */
	@Length(max = 40)
	@NotNull
	@ApiModelProperty("提币地址")
	private String fromAddress;

	/**
	 * 目标地址
	 */
	@Length(max = 40)
	@NotNull
	@ApiModelProperty("目标地址")
	private String toAddress;

	/**
	 * 提现金额
	 */
	@NotNull
	@ApiModelProperty("提现金额")
	private BigDecimal amount;

	/**
	 * 代币符号
	 */
	@NotNull
	@ApiModelProperty("代币符号")
	private String symbol;

}
