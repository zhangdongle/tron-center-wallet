package com.dadsunion.tron.controller;


import com.dadsunion.common.annotation.Log;
import com.dadsunion.common.core.domain.AjaxResult;
import com.dadsunion.common.enums.BusinessType;
import com.dadsunion.tron.domain.TronSystemAddress;
import com.dadsunion.tron.service.ITronRechargeRecordService;
import com.dadsunion.tron.service.ITronSystemAddressService;
import com.dadsunion.tron.service.ITronWithdrawRecordService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 充提币统计
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/statistics")
public class TronStatisticsController {

	private ITronRechargeRecordService rechargeRecordService;

	private ITronWithdrawRecordService withdrawRecordService;

	private ITronSystemAddressService systemAddressService;

	/**
	 * 获取系统地址实时余额
	 * @return
	 */
	@Log(title = "获取系统地址实时余额", businessType = BusinessType.EXPORT)
	@GetMapping("/systemAddress")
	public AjaxResult getSystemAddressAmount(){
		List<TronSystemAddress> list = systemAddressService.queryList(null);
		for(TronSystemAddress tsa : list){

		}
		return AjaxResult.success();
	}

	/**
	 * 获取系统充值统计
	 * @return
	 */
	@GetMapping("/recharge")
	public AjaxResult getRecharge(){


		return AjaxResult.success();
	}

	/**
	 * 获取系统提现统计
	 * @return
	 */
	@GetMapping("/withdraw")
	public AjaxResult getWithdraw(){


		return AjaxResult.success();
	}


}
