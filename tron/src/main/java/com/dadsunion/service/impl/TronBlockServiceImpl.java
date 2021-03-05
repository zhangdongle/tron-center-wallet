package com.dadsunion.service.impl;

import com.dadsunion.service.ITronBlockService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dadsunion.mapper.TronBlockMapper;
import com.dadsunion.domain.TronBlock;

import java.util.List;

/**
 * 区块高度Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Service
public class TronBlockServiceImpl extends ServiceImpl<TronBlockMapper, TronBlock> implements ITronBlockService {

    @Override
    public List<TronBlock> queryList(TronBlock tronBlock) {
        LambdaQueryWrapper<TronBlock> lqw = Wrappers.lambdaQuery();
        if (tronBlock.getBlock() != null){
            lqw.eq(TronBlock::getBlock ,tronBlock.getBlock());
        }
        return this.list(lqw);
    }
}
