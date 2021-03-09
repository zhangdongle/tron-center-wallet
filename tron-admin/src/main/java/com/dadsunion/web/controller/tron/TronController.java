package com.dadsunion.web.controller.tron;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.service.ITronAddressService;
import com.dadsunion.tron.service.impl.TronAddressServiceImpl;
import com.dadsunion.web.dto.CreateAddressDto;
import com.dadsunion.web.vo.CreateAddressVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;

@Api
@RestController
@RequestMapping("api/tron")
public class TronController {

	@Autowired
    private ITronAddressService addressService;

	@Autowired
    private TronDelegate tronService;

    @PostMapping("address")
    public CreateAddressVo getAddress(@RequestBody CreateAddressDto dto) {
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
        return addressVo;
    }

    @PostMapping("withdraw")
    public void withdraw() {
        //

    }

}