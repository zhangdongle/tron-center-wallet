package com.dadsunion.service;

import com.dadsunion.domain.TronWithdrawRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 提现记录Service接口
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
public interface ITronWithdrawRecordService extends IService<TronWithdrawRecord> {

    /**
     * 查询列表
     */
    List<TronWithdrawRecord> queryList(TronWithdrawRecord tronWithdrawRecord);
}
