package com.dadsunion.tron.service;

import com.dadsunion.tron.domain.TronBlock;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * 区块高度Service接口
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
public interface ITronBlockService extends IService<TronBlock> {

    /**
     * 查询列表
     */
    List<TronBlock> queryList(TronBlock tronBlock);
}
