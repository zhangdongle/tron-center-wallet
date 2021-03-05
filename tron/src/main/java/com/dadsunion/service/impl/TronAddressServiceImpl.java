package com.dadsunion.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.domain.TronAddress;
import com.dadsunion.service.ITronAddressService;
import com.dadsunion.mapper.TronAddressMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 地址管理Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronAddressServiceImpl extends ServiceImpl<TronAddressMapper, TronAddress>
    implements ITronAddressService {

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
    return this.list(lqw);
  }
}
