package com.dadsunion.service;

import com.dadsunion.domain.TronConsumeRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 消耗记录Service接口
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
public interface ITronConsumeRecordService extends IService<TronConsumeRecord> {

    /**
     * 查询列表
     */
    List<TronConsumeRecord> queryList(TronConsumeRecord tronConsumeRecord);
}
