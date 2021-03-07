package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronUnfreezeRecord;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 冻结解冻记录Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronUnfreezeRecordService extends IService<TronUnfreezeRecord> {

    /**
     * 查询列表
     */
    List<TronUnfreezeRecord> queryList(TronUnfreezeRecord tronUnfreezeRecord);
}
