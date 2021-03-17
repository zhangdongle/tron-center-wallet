package com.dadsunion.tron.task;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.common.utils.StringUtils;
import com.dadsunion.tron.constants.CollectState;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.domain.TronCollectRecord;
import com.dadsunion.tron.mapper.TronCollectRecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

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
			tronDelegate.collect(tcr);
		}
	}

	/**
	 * 归集状态任务
	 */
	public void collectState(){

	}
}
