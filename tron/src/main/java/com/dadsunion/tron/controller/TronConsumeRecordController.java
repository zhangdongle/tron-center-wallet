package com.dadsunion.tron.controller;

import java.util.List;
import java.util.Arrays;

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
import com.dadsunion.tron.domain.TronConsumeRecord;
import com.dadsunion.tron.service.ITronConsumeRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 消耗记录Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/consume" )
public class TronConsumeRecordController extends BaseController {

    private final ITronConsumeRecordService iTronConsumeRecordService;

    /**
     * 查询消耗记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronConsumeRecord tronConsumeRecord) {
        startPage();
        List<TronConsumeRecord> list = iTronConsumeRecordService.queryList(tronConsumeRecord);
        return getDataTable(list);
    }

    /**
     * 导出消耗记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:export')" )
    @Log(title = "消耗记录" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronConsumeRecord tronConsumeRecord) {
        List<TronConsumeRecord> list = iTronConsumeRecordService.queryList(tronConsumeRecord);
        ExcelUtil<TronConsumeRecord> util = new ExcelUtil<TronConsumeRecord>(TronConsumeRecord.class);
        return util.exportExcel(list, "consume" );
    }

    /**
     * 获取消耗记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Long id) {
        return AjaxResult.success(iTronConsumeRecordService.getById(id));
    }

    /**
     * 新增消耗记录
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:add')" )
    @Log(title = "消耗记录" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronConsumeRecord tronConsumeRecord) {
        return toAjax(iTronConsumeRecordService.save(tronConsumeRecord) ? 1 : 0);
    }

    /**
     * 修改消耗记录
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:edit')" )
    @Log(title = "消耗记录" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronConsumeRecord tronConsumeRecord) {
        return toAjax(iTronConsumeRecordService.updateById(tronConsumeRecord) ? 1 : 0);
    }

    /**
     * 删除消耗记录
     */
    @PreAuthorize("@ss.hasPermi('tron:consume:remove')" )
    @Log(title = "消耗记录" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(iTronConsumeRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
