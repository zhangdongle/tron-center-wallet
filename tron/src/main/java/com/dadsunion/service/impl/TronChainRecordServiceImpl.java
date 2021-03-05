package com.dadsunion.service.impl;

import com.dadsunion.domain.TronChainRecord;
import com.dadsunion.service.ITronChainRecordService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronChainRecordMapper;

import java.util.List;

/**
 * 波场链上交互信息Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronChainRecordServiceImpl extends ServiceImpl<TronChainRecordMapper, TronChainRecord> implements
        ITronChainRecordService {

    @Override
    public List<TronChainRecord> queryList(TronChainRecord tronChainRecord) {
        LambdaQueryWrapper<TronChainRecord> lqw = Wrappers.lambdaQuery();
        if (tronChainRecord.getType() != null){
            lqw.eq(TronChainRecord::getType ,tronChainRecord.getType());
        }
        if (tronChainRecord.getHeight() != null){
            lqw.eq(TronChainRecord::getHeight ,tronChainRecord.getHeight());
        }
        if (StringUtils.isNotBlank(tronChainRecord.getContractAddr())){
            lqw.eq(TronChainRecord::getContractAddr ,tronChainRecord.getContractAddr());
        }
        if (StringUtils.isNotBlank(tronChainRecord.getFrom())){
            lqw.eq(TronChainRecord::getFrom ,tronChainRecord.getFrom());
        }
        if (StringUtils.isNotBlank(tronChainRecord.getTo())){
            lqw.eq(TronChainRecord::getTo ,tronChainRecord.getTo());
        }
        if (tronChainRecord.getAmount() != null){
            lqw.eq(TronChainRecord::getAmount ,tronChainRecord.getAmount());
        }
        if (tronChainRecord.getBandwidth() != null){
            lqw.eq(TronChainRecord::getBandwidth ,tronChainRecord.getBandwidth());
        }
        if (tronChainRecord.getEnergy() != null){
            lqw.eq(TronChainRecord::getEnergy ,tronChainRecord.getEnergy());
        }
        if (tronChainRecord.getBornTrx() != null){
            lqw.eq(TronChainRecord::getBornTrx ,tronChainRecord.getBornTrx());
        }
        if (StringUtils.isNotBlank(tronChainRecord.getBlockInfo())){
            lqw.eq(TronChainRecord::getBlockInfo ,tronChainRecord.getBlockInfo());
        }
        if (tronChainRecord.getState() != null){
            lqw.eq(TronChainRecord::getState ,tronChainRecord.getState());
        }
        if (StringUtils.isNotBlank(tronChainRecord.getErrMsg())){
            lqw.eq(TronChainRecord::getErrMsg ,tronChainRecord.getErrMsg());
        }
        if (tronChainRecord.getRelatedId() != null){
            lqw.eq(TronChainRecord::getRelatedId ,tronChainRecord.getRelatedId());
        }
        return this.list(lqw);
    }
}
