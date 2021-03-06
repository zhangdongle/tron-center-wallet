package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronCollectRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 归集记录Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronCollectRecordService extends IService<TronCollectRecord> {

    /**
     * 查询列表
     */
    List<TronCollectRecord> queryList(TronCollectRecord tronCollectRecord);
}
