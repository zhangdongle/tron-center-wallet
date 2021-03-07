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
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.service.ITronChainRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 波场链上交互信息Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/chain" )
public class TronChainRecordController extends BaseController {

    private final ITronChainRecordService iTronChainRecordService;

    /**
     * 查询波场链上交互信息列表
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronChainRecord tronChainRecord) {
        startPage();
        List<TronChainRecord> list = iTronChainRecordService.queryList(tronChainRecord);
        return getDataTable(list);
    }

    /**
     * 导出波场链上交互信息列表
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:export')" )
    @Log(title = "波场链上交互信息" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronChainRecord tronChainRecord) {
        List<TronChainRecord> list = iTronChainRecordService.queryList(tronChainRecord);
        ExcelUtil<TronChainRecord> util = new ExcelUtil<TronChainRecord>(TronChainRecord.class);
        return util.exportExcel(list, "chain" );
    }

    /**
     * 获取波场链上交互信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Long id) {
        return AjaxResult.success(iTronChainRecordService.getById(id));
    }

    /**
     * 新增波场链上交互信息
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:add')" )
    @Log(title = "波场链上交互信息" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronChainRecord tronChainRecord) {
        return toAjax(iTronChainRecordService.save(tronChainRecord) ? 1 : 0);
    }

    /**
     * 修改波场链上交互信息
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:edit')" )
    @Log(title = "波场链上交互信息" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronChainRecord tronChainRecord) {
        return toAjax(iTronChainRecordService.updateById(tronChainRecord) ? 1 : 0);
    }

    /**
     * 删除波场链上交互信息
     */
    @PreAuthorize("@ss.hasPermi('tron:chain:remove')" )
    @Log(title = "波场链上交互信息" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(iTronChainRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
