package com.dadsunion.web.controller.tron;

import javax.servlet.http.HttpServletRequest;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.dadsunion.common.annotation.Log;
import com.dadsunion.common.enums.BusinessType;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.domain.TronWithdrawRecord;
import com.dadsunion.tron.dto.WithdrawDto;
import com.dadsunion.tron.service.ITronAddressService;
import com.dadsunion.tron.service.ITronWithdrawRecordService;
import com.dadsunion.tron.utils.IpUtil;
import com.dadsunion.tron.dto.CreateAddressDto;
import com.dadsunion.tron.vo.CreateAddressVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api
@RestController
@RequestMapping("api/tron")
public class TronController {

	@Autowired
	private ITronAddressService addressService;

	@Autowired
	private ITronWithdrawRecordService withdrawRecordService;

	@Autowired
	private TronDelegate tronService;

	@Value("${system.white-ip}")
	private String whiteIp;

	@Log(title = "获取/生成地址", businessType = BusinessType.INSERT)
	@ApiOperation(value = "获取用户（钱包）地址", response = CreateAddressVo.class)
	@PostMapping("address")
	public R<CreateAddressVo> getAddress(@RequestBody @Validated CreateAddressDto dto, HttpServletRequest request) {
		if (!IpUtil.validWhiteIp(request, whiteIp))
			return R.failed("未知IP");
		// 查询是否存在用户地址
		// 有则返回
		QueryWrapper<TronAddress> wrapper = new QueryWrapper<>();
		wrapper.eq("user_id", dto.getUserId());
		TronAddress tronAddress = addressService.getOne(wrapper);
		CreateAddressVo addressVo = new CreateAddressVo();
		if (tronAddress == null) {
			String address = tronService.createAddress(dto.getUserId());
			addressVo.setAddress(address);
			addressVo.setActivated(false);
		} else {
			addressVo.setAddress(tronAddress.getAddress());
			addressVo.setActivated(false);
		}
		// 没有则创建地址并返回
		return R.ok(addressVo);
	}

	@ApiOperation(value = "提现", response = R.class)
	@PostMapping("withdraw")
	public R withdraw(@RequestBody @Validated WithdrawDto dto,HttpServletRequest request) {
		if (!IpUtil.validWhiteIp(request, whiteIp))
			return R.failed("未知IP");
		// 校验地址有效性
		if (dto.getFromAddress().equals(dto.getToAddress())) {
			return R.failed("接收地址不能是发送地址");
		}

		// 校验是否存在记录，requestNo
		QueryWrapper<TronWithdrawRecord> query = new QueryWrapper<>();
		query.eq("request_no", dto.getRequestNo());
		TronWithdrawRecord record = withdrawRecordService.getOne(query);
		if (record != null) {
			return R.failed("记录已存在，请勿重复提交");
		}

		// 校验用户和地址的一致性
		QueryWrapper<TronAddress> q1 = new QueryWrapper<>();
		q1.eq("user_id", dto.getUserId());
		q1.eq("address", dto.getFromAddress());
		TronAddress address = addressService.getOne(q1);
		if (address == null) {
			return R.failed("地址信息异常:" + dto.getFromAddress());
		}

		tronService.withdraw(dto);
		return R.ok(null);
	}

}