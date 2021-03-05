package com.dadsunion.service.impl;

import com.dadsunion.service.ITronSystemAddressService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronSystemAddressMapper;
import com.dadsunion.domain.TronSystemAddress;

import java.util.List;

/**
 * 系统地址Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronSystemAddressServiceImpl extends ServiceImpl<TronSystemAddressMapper, TronSystemAddress> implements
        ITronSystemAddressService {

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
