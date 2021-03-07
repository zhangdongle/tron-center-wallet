package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronSystemAddress;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 系统地址Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronSystemAddressService extends IService<TronSystemAddress> {

    /**
     * 查询列表
     */
    List<TronSystemAddress> queryList(TronSystemAddress tronSystemAddress);
}
