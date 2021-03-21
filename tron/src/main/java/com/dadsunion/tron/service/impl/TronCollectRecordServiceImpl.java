package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronCollectRecord;
import com.dadsunion.tron.mapper.TronCollectRecordMapper;
import com.dadsunion.tron.service.ITronCollectRecordService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 归集记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronCollectRecordServiceImpl extends ServiceImpl<TronCollectRecordMapper, TronCollectRecord> implements ITronCollectRecordService {

    @Override
    public List<TronCollectRecord> queryList(TronCollectRecord tronCollectRecord) {
        LambdaQueryWrapper<TronCollectRecord> lqw = Wrappers.lambdaQuery();
        if (tronCollectRecord.getRechargeId() != null){
            lqw.eq(TronCollectRecord::getRechargeId ,tronCollectRecord.getRechargeId());
        }
        if (tronCollectRecord.getRechargeChainId() != null){
            lqw.eq(TronCollectRecord::getRechargeChainId ,tronCollectRecord.getRechargeChainId());
        }
        if (tronCollectRecord.getCollectChainId() != null){
            lqw.eq(TronCollectRecord::getCollectChainId ,tronCollectRecord.getCollectChainId());
        }
        if (tronCollectRecord.getAmount() != null){
            lqw.eq(TronCollectRecord::getAmount ,tronCollectRecord.getAmount());
        }
        if (StringUtils.isNotBlank(tronCollectRecord.getFromAddr())){
            lqw.eq(TronCollectRecord::getFromAddr,tronCollectRecord.getFromAddr());
        }
        if (StringUtils.isNotBlank(tronCollectRecord.getToAddr())){
            lqw.eq(TronCollectRecord::getToAddr,tronCollectRecord.getToAddr());
        }
        if (tronCollectRecord.getState() != null){
            lqw.eq(TronCollectRecord::getState ,tronCollectRecord.getState());
        }
        lqw.orderByDesc(TronCollectRecord::getId);
        return this.list(lqw);
    }
}
