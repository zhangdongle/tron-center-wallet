package com.dadsunion.tron.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dadsunion.tron.domain.TronBlock;
import com.dadsunion.tron.mapper.TronBlockMapper;
import com.dadsunion.tron.service.ITronBlockService;

import org.springframework.stereotype.Service;

/**
 * 区块高度Service业务层处理
 *
 * @author l8oo8l
 * @date 2021-03-06
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
