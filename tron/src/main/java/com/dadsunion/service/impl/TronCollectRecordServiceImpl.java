package com.dadsunion.service.impl;

import com.dadsunion.domain.TronCollectRecord;
import com.dadsunion.service.ITronCollectRecordService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronCollectRecordMapper;

import java.util.List;

/**
 * 归集记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronCollectRecordServiceImpl extends ServiceImpl<TronCollectRecordMapper, TronCollectRecord> implements
        ITronCollectRecordService {

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
        if (StringUtils.isNotBlank(tronCollectRecord.getFrom())){
            lqw.eq(TronCollectRecord::getFrom ,tronCollectRecord.getFrom());
        }
        if (StringUtils.isNotBlank(tronCollectRecord.getTo())){
            lqw.eq(TronCollectRecord::getTo ,tronCollectRecord.getTo());
        }
        if (tronCollectRecord.getState() != null){
            lqw.eq(TronCollectRecord::getState ,tronCollectRecord.getState());
        }
        return this.list(lqw);
    }
}
