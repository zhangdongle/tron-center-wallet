package com.dadsunion.service;

import com.dadsunion.domain.TronCoinType;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 币种管理Service接口
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
public interface ITronCoinTypeService extends IService<TronCoinType> {

    /**
     * 查询列表
     */
    List<TronCoinType> queryList(TronCoinType tronCoinType);
}
