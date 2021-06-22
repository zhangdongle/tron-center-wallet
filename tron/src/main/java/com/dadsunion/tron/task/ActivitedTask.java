package com.dadsunion.tron.task;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.dadsunion.tron.constants.ConsumeType;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronConsumeRecord;
import com.dadsunion.tron.mapper.TronConsumeRecordMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 激活地址定时任务 波场地址需要0.1个trx来激活账户 如果用户首次充值进来的是trx，则用户方会激活该地址
 * 如果用户首次充值的不是trx，那么该地址就是未激活的状态 则在归集的时候，该地址无法转账出去 所以要激活该地址
 */
@Component("activitedTask")
public class ActivitedTask {

    @Autowired
    private TronConsumeRecordMapper consumeRecordMapper;

    @Autowired
    private TronDelegate tronDelegate;

    public void run() {
        LambdaQueryWrapper<TronConsumeRecord> query = new LambdaQueryWrapper<>();
        query.eq(TronConsumeRecord::getType, ConsumeType.ACTIVATE);
        query.eq(TronConsumeRecord::getState, 0);
        List<TronConsumeRecord> list = consumeRecordMapper.selectList(query);
        for (TronConsumeRecord tcr : list) {
            tronDelegate.activate(tcr);
        }
    }

}
