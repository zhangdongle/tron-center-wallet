package com.dadsunion.tron.task;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.tron.constants.CollectState;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.domain.TronCollectRecord;
import com.dadsunion.tron.mapper.TronAddressMapper;
import com.dadsunion.tron.mapper.TronCollectRecordMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 充值归集任务
 *
 * @author ruoyi
 */
@Component("collectTask")
public class CollectTask {

	@Autowired
	private TronCollectRecordMapper collectRecordMapper;

	@Autowired
	private TronAddressMapper addressMapper;

	@Autowired
	private TronDelegate tronDelegate;

	/**
	 * 归集任务
	 */
	public void collect() {
		// 查询所有待归集的记录
		QueryWrapper<TronCollectRecord> query = new QueryWrapper<>();
		query.eq("state", CollectState.PENDING);
		List<TronCollectRecord> list = collectRecordMapper.selectList(query);
		for (TronCollectRecord tcr : list) {
			// 判断归集的是否主币trx
			// 如果是主币trx则表示地址已经激活
			if (TronDelegate.COIN_SYMBOL.get(tcr.getSymbol()).isMaster()) {
				tronDelegate.collect(tcr);
			} else {
				// 判断该用户充值地址是否已激活
				LambdaQueryWrapper<TronAddress> addr = new LambdaQueryWrapper<>();
				addr.eq(TronAddress::getAddress, tcr.getFromAddr());
				TronAddress ta = addressMapper.selectOne(addr);
				if (ta.getActivated() == 1) {
					tronDelegate.collect(tcr);
				}
			}

		}

	}

	/**
	 * 归集状态任务
	 */
	public void collectState() {

	}
}
