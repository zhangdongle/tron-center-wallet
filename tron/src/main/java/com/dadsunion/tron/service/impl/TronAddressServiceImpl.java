package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.mapper.TronAddressMapper;
import com.dadsunion.tron.service.ITronAddressService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 地址管理Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronAddressServiceImpl extends ServiceImpl<TronAddressMapper, TronAddress> implements ITronAddressService {

    @Override
    public List<TronAddress> queryList(TronAddress tronAddress) {
        LambdaQueryWrapper<TronAddress> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronAddress.getUserId())) {
            lqw.eq(TronAddress::getUserId, tronAddress.getUserId());
        }
        if (StringUtils.isNotBlank(tronAddress.getAddress())) {
            lqw.eq(TronAddress::getAddress, tronAddress.getAddress());
        }
        if (tronAddress.getActivated() != null) {
            lqw.eq(TronAddress::getActivated, tronAddress.getActivated());
        }
        if (StringUtils.isNotBlank(tronAddress.getSecretkey())) {
            lqw.eq(TronAddress::getSecretkey, tronAddress.getSecretkey());
        }
        lqw.orderByDesc(TronAddress::getId);
        return this.list(lqw);
    }
}
