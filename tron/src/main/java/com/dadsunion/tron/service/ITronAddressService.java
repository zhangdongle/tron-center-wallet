package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronAddress;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 地址管理Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronAddressService extends IService<TronAddress> {

    /**
     * 查询列表
     */
    List<TronAddress> queryList(TronAddress tronAddress);
}
