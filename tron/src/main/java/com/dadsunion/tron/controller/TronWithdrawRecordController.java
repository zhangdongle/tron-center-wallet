package com.dadsunion.tron.controller;

import java.util.List;
import java.util.Arrays;

import com.dadsunion.tron.constants.WithdrawState;
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
import com.dadsunion.tron.domain.TronWithdrawRecord;
import com.dadsunion.tron.service.ITronWithdrawRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 提现记录Controller
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/withdraw")
public class TronWithdrawRecordController extends BaseController {

	private final ITronWithdrawRecordService iTronWithdrawRecordService;

	private final TronDelegate tronDelegate;

	/**
	 * 查询提现记录列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:list')")
	@GetMapping("/list")
	public TableDataInfo list(TronWithdrawRecord tronWithdrawRecord) {
		startPage();
		List<TronWithdrawRecord> list = iTronWithdrawRecordService.queryList(tronWithdrawRecord);
		return getDataTable(list);
	}

	/**
	 * 导出提现记录列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:export')")
	@Log(title = "提现记录", businessType = BusinessType.EXPORT)
	@GetMapping("/export")
	public AjaxResult export(TronWithdrawRecord tronWithdrawRecord) {
		List<TronWithdrawRecord> list = iTronWithdrawRecordService.queryList(tronWithdrawRecord);
		ExcelUtil<TronWithdrawRecord> util = new ExcelUtil<TronWithdrawRecord>(TronWithdrawRecord.class);
		return util.exportExcel(list, "withdraw");
	}

	/**
	 * 获取提现记录详细信息
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:query')")
	@GetMapping(value = "/{id}")
	public AjaxResult getInfo(@PathVariable("id") Long id) {
		return AjaxResult.success(iTronWithdrawRecordService.getById(id));
	}

	/**
	 * 新增提现记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:add')")
	@Log(title = "提现记录", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@RequestBody TronWithdrawRecord tronWithdrawRecord) {
		return toAjax(iTronWithdrawRecordService.save(tronWithdrawRecord) ? 1 : 0);
	}

	/**
	 * 修改提现记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:edit')")
	@Log(title = "提现记录", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@RequestBody TronWithdrawRecord tronWithdrawRecord) {
		return toAjax(iTronWithdrawRecordService.updateById(tronWithdrawRecord) ? 1 : 0);
	}

	/**
	 * 删除提现记录
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:remove')")
	@Log(title = "提现记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
	public AjaxResult remove(@PathVariable Long[] ids) {
		return toAjax(iTronWithdrawRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
	}

	/**
	 * 重新发起提现
	 */
	@PreAuthorize("@ss.hasPermi('tron:withdraw:edit')")
	@Log(title = "重新发起提现", businessType = BusinessType.UPDATE)
	@PutMapping("again")
	public AjaxResult again(@RequestBody TronWithdrawRecord tronWithdrawRecord) {
		TronWithdrawRecord twr = iTronWithdrawRecordService.getById(tronWithdrawRecord.getId());
		// 查询提现状态
		if (WithdrawState.HANDLING != twr.getState()) {
			return AjaxResult.error("当前状态不可操作");
		}
		return toAjax(tronDelegate.reWithdraw(twr) ? 1 : 0);
	}
}
