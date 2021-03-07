package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronChainRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 波场链上交互信息Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronChainRecordService extends IService<TronChainRecord> {

    /**
     * 查询列表
     */
    List<TronChainRecord> queryList(TronChainRecord tronChainRecord);
}
