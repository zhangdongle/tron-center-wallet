package com.dadsunion.service;

import com.dadsunion.domain.TronAddress;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 地址管理Service接口
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
public interface ITronAddressService extends IService<TronAddress> {

    /**
     * 查询列表
     */
    List<TronAddress> queryList(TronAddress tronAddress);
}
