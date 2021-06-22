package com.dadsunion.tron.controller;

import java.util.List;
import java.util.Arrays;

import com.dadsunion.tron.constants.CollectState;
import com.dadsunion.tron.delegate.TronDelegate;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.dadsunion.common.annotation.Log;
import com.dadsunion.common.core.controller.BaseController;
import com.dadsunion.common.core.domain.AjaxResult;
import com.dadsunion.common.enums.BusinessType;
import com.dadsunion.tron.domain.TronCollectRecord;
import com.dadsunion.tron.service.ITronCollectRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 归集记录Controller
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/collect")
public class TronCollectRecordController extends BaseController {

	private final ITronCollectRecordService iTronCollectRecordService;

	private final TronDelegate tronDelegate;

	/**
	 * 查询归集记录列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:list')")
	@GetMapping("/list")
	public TableDataInfo list(TronCollectRecord tronCollectRecord) {
		startPage();
		List<TronCollectRecord> list = iTronCollectRecordService.queryList(tronCollectRecord);
		return getDataTable(list);
	}

	/**
	 * 导出归集记录列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:export')")
	@Log(title = "归集记录", businessType = BusinessType.EXPORT)
	@GetMapping("/export")
	public AjaxResult export(TronCollectRecord tronCollectRecord) {
		List<TronCollectRecord> list = iTronCollectRecordService.queryList(tronCollectRecord);
		ExcelUtil<TronCollectRecord> util = new ExcelUtil<TronCollectRecord>(TronCollectRecord.class);
		return util.exportExcel(list, "collect");
	}

	/**
	 * 获取归集记录详细信息
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:query')")
	@GetMapping(value = "/{id}")
	public AjaxResult getInfo(@PathVariable("id") Long id) {
		return AjaxResult.success(iTronCollectRecordService.getById(id));
	}

	/**
	 * 新增归集记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:add')")
	@Log(title = "归集记录", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@RequestBody TronCollectRecord tronCollectRecord) {
		return toAjax(iTronCollectRecordService.save(tronCollectRecord) ? 1 : 0);
	}

	/**
	 * 修改归集记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:edit')")
	@Log(title = "归集记录", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@RequestBody TronCollectRecord tronCollectRecord) {
		return toAjax(iTronCollectRecordService.updateById(tronCollectRecord) ? 1 : 0);
	}

	/**
	 * 删除归集记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:remove')")
	@Log(title = "归集记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
	public AjaxResult remove(@PathVariable Long[] ids) {
		return toAjax(iTronCollectRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
	}

	/**
	 * 重新归集
	 */
	@PreAuthorize("@ss.hasPermi('tron:collect:edit')")
	@Log(title = "归集记录", businessType = BusinessType.UPDATE)
	@PutMapping("reCollect")
	public AjaxResult reCollect(@RequestBody TronCollectRecord tronCollectRecord) {
		TronCollectRecord tcr = iTronCollectRecordService.getById(tronCollectRecord.getId());
		if (tcr.getState() != CollectState.FAILURE) {
			return AjaxResult.error("当前状态不可操作");
		}
		return toAjax(tronDelegate.reCollect(tcr) ? 1 : 0);
	}
}
