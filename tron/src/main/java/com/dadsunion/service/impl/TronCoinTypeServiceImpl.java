package com.dadsunion.service.impl;

import com.dadsunion.domain.TronCoinType;
import com.dadsunion.service.ITronCoinTypeService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronCoinTypeMapper;

import java.util.List;

/**
 * 币种管理Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronCoinTypeServiceImpl extends ServiceImpl<TronCoinTypeMapper, TronCoinType> implements
        ITronCoinTypeService {

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
