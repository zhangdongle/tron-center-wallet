package com.dadsunion.service.impl;

import com.dadsunion.domain.TronUnfreezeRecord;
import com.dadsunion.service.ITronUnfreezeRecordService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.lang3.StringUtils;
import com.dadsunion.mapper.TronUnfreezeRecordMapper;

import java.util.List;

/**
 * 冻结解冻记录Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronUnfreezeRecordServiceImpl extends ServiceImpl<TronUnfreezeRecordMapper, TronUnfreezeRecord> implements
        ITronUnfreezeRecordService {

    @Override
    public List<TronUnfreezeRecord> queryList(TronUnfreezeRecord tronUnfreezeRecord) {
        LambdaQueryWrapper<TronUnfreezeRecord> lqw = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(tronUnfreezeRecord.getAddress())){
            lqw.eq(TronUnfreezeRecord::getAddress ,tronUnfreezeRecord.getAddress());
        }
        if (tronUnfreezeRecord.getType() != null){
            lqw.eq(TronUnfreezeRecord::getType ,tronUnfreezeRecord.getType());
        }
        if (tronUnfreezeRecord.getDirect() != null){
            lqw.eq(TronUnfreezeRecord::getDirect ,tronUnfreezeRecord.getDirect());
        }
        if (tronUnfreezeRecord.getState() != null){
            lqw.eq(TronUnfreezeRecord::getState ,tronUnfreezeRecord.getState());
        }
        return this.list(lqw);
    }
}
