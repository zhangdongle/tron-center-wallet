package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronConsumeRecord;
import com.dadsunion.tron.mapper.TronConsumeRecordMapper;
import com.dadsunion.tron.service.ITronConsumeRecordService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 消耗记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronConsumeRecordServiceImpl extends ServiceImpl<TronConsumeRecordMapper, TronConsumeRecord> implements ITronConsumeRecordService {

    @Override
    public List<TronConsumeRecord> queryList(TronConsumeRecord tronConsumeRecord) {
        LambdaQueryWrapper<TronConsumeRecord> lqw = Wrappers.lambdaQuery();
        if (tronConsumeRecord.getChainId() != null){
            lqw.eq(TronConsumeRecord::getChainId ,tronConsumeRecord.getChainId());
        }
        if (StringUtils.isNotBlank(tronConsumeRecord.getFrom())){
            lqw.eq(TronConsumeRecord::getFrom ,tronConsumeRecord.getFrom());
        }
        if (StringUtils.isNotBlank(tronConsumeRecord.getTo())){
            lqw.eq(TronConsumeRecord::getTo ,tronConsumeRecord.getTo());
        }
        if (tronConsumeRecord.getType() != null){
            lqw.eq(TronConsumeRecord::getType ,tronConsumeRecord.getType());
        }
        if (tronConsumeRecord.getState() != null){
            lqw.eq(TronConsumeRecord::getState ,tronConsumeRecord.getState());
        }
        if (tronConsumeRecord.getCount() != null){
            lqw.eq(TronConsumeRecord::getCount ,tronConsumeRecord.getCount());
        }
        return this.list(lqw);
    }
}
