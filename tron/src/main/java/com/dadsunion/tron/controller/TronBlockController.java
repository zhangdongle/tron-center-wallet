package com.dadsunion.tron.controller;

import java.util.List;
import java.util.Arrays;

import com.dadsunion.tron.dto.SyncStateDto;
import com.dadsunion.tron.task.SyncBlockTask;
import com.dadsunion.tron.vo.ScanBlockVo;
import io.swagger.annotations.ApiOperation;
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
import com.dadsunion.tron.domain.TronBlock;
import com.dadsunion.tron.service.ITronBlockService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 区块高度Controller
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/blockheight")
public class TronBlockController extends BaseController {

	private final ITronBlockService iTronBlockService;

	/**
	 * 查询区块高度列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:list')")
	@GetMapping("/list")
	public TableDataInfo list(TronBlock tronBlock) {
		startPage();
		List<TronBlock> list = iTronBlockService.queryList(tronBlock);
		return getDataTable(list);
	}

	/**
	 * 导出区块高度列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:export')")
	@Log(title = "区块高度", businessType = BusinessType.EXPORT)
	@GetMapping("/export")
	public AjaxResult export(TronBlock tronBlock) {
		List<TronBlock> list = iTronBlockService.queryList(tronBlock);
		ExcelUtil<TronBlock> util = new ExcelUtil<TronBlock>(TronBlock.class);
		return util.exportExcel(list, "blockheight");
	}

	/**
	 * 获取区块高度详细信息
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:query')")
	@GetMapping(value = "/{block}")
	public AjaxResult getInfo(@PathVariable("block") Long block) {
		return AjaxResult.success(iTronBlockService.getById(block));
	}

	/**
	 * 新增区块高度
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:add')")
	@Log(title = "区块高度", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@RequestBody TronBlock tronBlock) {
		return toAjax(iTronBlockService.save(tronBlock) ? 1 : 0);
	}

	/**
	 * 修改区块高度
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:edit')")
	@Log(title = "区块高度", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@RequestBody TronBlock tronBlock) {
		return toAjax(iTronBlockService.updateById(tronBlock) ? 1 : 0);
	}

	/**
	 * 修改区块高度
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:edit')")
	@Log(title = "启动/停止区块扫描", businessType = BusinessType.UPDATE)
	@PutMapping("sync")
	public AjaxResult sync(@RequestBody SyncStateDto dto) {
		if (dto.getState() == 1) {
			SyncBlockTask.start();
		} else {
			SyncBlockTask.stop();
		}
		return AjaxResult.success();
	}

	@PreAuthorize("@ss.hasPermi('tron:blockheight:query')")
	@Log(title = "获取扫描区块信息")
	@ApiOperation(response = ScanBlockVo.class, value = "获取扫描区块信息")
	public AjaxResult getBlockInfo() {

		ScanBlockVo blockVo = new ScanBlockVo();
		blockVo.setSyncBlockHeight(SyncBlockTask.getSyncNumber());
		blockVo.setLastBlockHeight(SyncBlockTask.getlastBlockHeight());

		return AjaxResult.success(blockVo);
	}

	/**
	 * 删除区块高度
	 */
	@PreAuthorize("@ss.hasPermi('tron:blockheight:remove')")
	@Log(title = "区块高度", businessType = BusinessType.DELETE)
	@DeleteMapping("/{blocks}")
	public AjaxResult remove(@PathVariable Long[] blocks) {
		return toAjax(iTronBlockService.removeByIds(Arrays.asList(blocks)) ? 1 : 0);
	}
}
