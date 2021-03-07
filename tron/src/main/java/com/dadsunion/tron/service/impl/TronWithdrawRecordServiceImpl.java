package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronWithdrawRecord;
import com.dadsunion.tron.mapper.TronWithdrawRecordMapper;
import com.dadsunion.tron.service.ITronWithdrawRecordService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 提现记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Service
public class TronWithdrawRecordServiceImpl extends ServiceImpl<TronWithdrawRecordMapper, TronWithdrawRecord> implements ITronWithdrawRecordService {

    @Override
    public List<TronWithdrawRecord> queryList(TronWithdrawRecord tronWithdrawRecord) {
        LambdaQueryWrapper<TronWithdrawRecord> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronWithdrawRecord.getFrom())){
            lqw.eq(TronWithdrawRecord::getFrom ,tronWithdrawRecord.getFrom());
        }
        if (StringUtils.isNotBlank(tronWithdrawRecord.getTo())){
            lqw.eq(TronWithdrawRecord::getTo ,tronWithdrawRecord.getTo());
        }
        if (tronWithdrawRecord.getAmount() != null){
            lqw.eq(TronWithdrawRecord::getAmount ,tronWithdrawRecord.getAmount());
        }
        if (tronWithdrawRecord.getState() != null){
            lqw.eq(TronWithdrawRecord::getState ,tronWithdrawRecord.getState());
        }
        if (StringUtils.isNotBlank(tronWithdrawRecord.getSymbol())){
            lqw.eq(TronWithdrawRecord::getSymbol ,tronWithdrawRecord.getSymbol());
        }
        if (tronWithdrawRecord.getChainId() != null){
            lqw.eq(TronWithdrawRecord::getChainId ,tronWithdrawRecord.getChainId());
        }
        return this.list(lqw);
    }
}
