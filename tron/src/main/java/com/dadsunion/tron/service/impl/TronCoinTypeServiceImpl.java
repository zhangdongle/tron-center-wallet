package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronCoinType;
import com.dadsunion.tron.mapper.TronCoinTypeMapper;
import com.dadsunion.tron.service.ITronCoinTypeService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 币种管理Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronCoinTypeServiceImpl extends ServiceImpl<TronCoinTypeMapper, TronCoinType> implements ITronCoinTypeService {

    @Override
    public List<TronCoinType> queryList(TronCoinType tronCoinType) {
        LambdaQueryWrapper<TronCoinType> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronCoinType.getSymbol())){
            lqw.eq(TronCoinType::getSymbol ,tronCoinType.getSymbol());
        }
        if (tronCoinType.getType() != null){
            lqw.eq(TronCoinType::getType ,tronCoinType.getType());
        }
        if (tronCoinType.getIsMaster() != null){
            lqw.eq(TronCoinType::getIsMaster ,tronCoinType.getIsMaster());
        }
        if (StringUtils.isNotBlank(tronCoinType.getName())){
            lqw.like(TronCoinType::getName ,tronCoinType.getName());
        }
        if (StringUtils.isNotBlank(tronCoinType.getContractAddr())){
            lqw.eq(TronCoinType::getContractAddr ,tronCoinType.getContractAddr());
        }
        if (tronCoinType.getScale() != null){
            lqw.eq(TronCoinType::getScale ,tronCoinType.getScale());
        }
        return this.list(lqw);
    }
}
