package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronRechargeRecord;
import com.dadsunion.tron.mapper.TronRechargeRecordMapper;
import com.dadsunion.tron.service.ITronRechargeRecordService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 充值记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronRechargeRecordServiceImpl extends ServiceImpl<TronRechargeRecordMapper, TronRechargeRecord> implements ITronRechargeRecordService {

    @Override
    public List<TronRechargeRecord> queryList(TronRechargeRecord tronRechargeRecord) {
        LambdaQueryWrapper<TronRechargeRecord> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronRechargeRecord.getFromAddr())){
            lqw.eq(TronRechargeRecord::getFromAddr,tronRechargeRecord.getFromAddr());
        }
        if (StringUtils.isNotBlank(tronRechargeRecord.getToAddr())){
            lqw.eq(TronRechargeRecord::getToAddr,tronRechargeRecord.getToAddr());
        }
        if (tronRechargeRecord.getAmount() != null){
            lqw.eq(TronRechargeRecord::getAmount ,tronRechargeRecord.getAmount());
        }
        if (tronRechargeRecord.getState() != null){
            lqw.eq(TronRechargeRecord::getState ,tronRechargeRecord.getState());
        }
        if (StringUtils.isNotBlank(tronRechargeRecord.getSymbol())){
            lqw.eq(TronRechargeRecord::getSymbol ,tronRechargeRecord.getSymbol());
        }
        if (tronRechargeRecord.getChainId() != null){
            lqw.eq(TronRechargeRecord::getChainId ,tronRechargeRecord.getChainId());
        }
        lqw.orderByDesc(TronRechargeRecord::getId);
        return this.list(lqw);
    }
}
