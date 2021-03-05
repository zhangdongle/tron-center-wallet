package com.dadsunion.service.impl;

import com.dadsunion.domain.TronRechargeRecord;
import com.dadsunion.service.ITronRechargeRecordService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronRechargeRecordMapper;

import java.util.List;

/**
 * 充值记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronRechargeRecordServiceImpl extends ServiceImpl<TronRechargeRecordMapper, TronRechargeRecord> implements
        ITronRechargeRecordService {

    @Override
    public List<TronRechargeRecord> queryList(TronRechargeRecord tronRechargeRecord) {
        LambdaQueryWrapper<TronRechargeRecord> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronRechargeRecord.getFrom())){
            lqw.eq(TronRechargeRecord::getFrom ,tronRechargeRecord.getFrom());
        }
        if (StringUtils.isNotBlank(tronRechargeRecord.getTo())){
            lqw.eq(TronRechargeRecord::getTo ,tronRechargeRecord.getTo());
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
        return this.list(lqw);
    }
}
