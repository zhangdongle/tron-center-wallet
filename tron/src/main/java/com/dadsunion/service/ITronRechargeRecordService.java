package com.dadsunion.service;

import com.dadsunion.domain.TronRechargeRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 充值记录Service接口
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
public interface ITronRechargeRecordService extends IService<TronRechargeRecord> {

    /**
     * 查询列表
     */
    List<TronRechargeRecord> queryList(TronRechargeRecord tronRechargeRecord);
}
