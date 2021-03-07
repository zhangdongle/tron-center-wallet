package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronSystemAddress;
import com.dadsunion.tron.mapper.TronSystemAddressMapper;
import com.dadsunion.tron.service.ITronSystemAddressService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 系统地址Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronSystemAddressServiceImpl extends ServiceImpl<TronSystemAddressMapper, TronSystemAddress> implements ITronSystemAddressService {

    @Override
    public List<TronSystemAddress> queryList(TronSystemAddress tronSystemAddress) {
        LambdaQueryWrapper<TronSystemAddress> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronSystemAddress.getAddress())){
            lqw.eq(TronSystemAddress::getAddress ,tronSystemAddress.getAddress());
        }
        if (StringUtils.isNotBlank(tronSystemAddress.getType())){
            lqw.eq(TronSystemAddress::getType ,tronSystemAddress.getType());
        }
        return this.list(lqw);
    }
}
