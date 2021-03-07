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
import com.dadsunion.tron.domain.TronUnfreezeRecord;
import com.dadsunion.tron.service.ITronUnfreezeRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 冻结解冻记录Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/unfreeze" )
public class TronUnfreezeRecordController extends BaseController {

    private final ITronUnfreezeRecordService iTronUnfreezeRecordService;

    /**
     * 查询冻结解冻记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronUnfreezeRecord tronUnfreezeRecord) {
        startPage();
        List<TronUnfreezeRecord> list = iTronUnfreezeRecordService.queryList(tronUnfreezeRecord);
        return getDataTable(list);
    }

    /**
     * 导出冻结解冻记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:export')" )
    @Log(title = "冻结解冻记录" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronUnfreezeRecord tronUnfreezeRecord) {
        List<TronUnfreezeRecord> list = iTronUnfreezeRecordService.queryList(tronUnfreezeRecord);
        ExcelUtil<TronUnfreezeRecord> util = new ExcelUtil<TronUnfreezeRecord>(TronUnfreezeRecord.class);
        return util.exportExcel(list, "unfreeze" );
    }

    /**
     * 获取冻结解冻记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Long id) {
        return AjaxResult.success(iTronUnfreezeRecordService.getById(id));
    }

    /**
     * 新增冻结解冻记录
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:add')" )
    @Log(title = "冻结解冻记录" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronUnfreezeRecord tronUnfreezeRecord) {
        return toAjax(iTronUnfreezeRecordService.save(tronUnfreezeRecord) ? 1 : 0);
    }

    /**
     * 修改冻结解冻记录
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:edit')" )
    @Log(title = "冻结解冻记录" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronUnfreezeRecord tronUnfreezeRecord) {
        return toAjax(iTronUnfreezeRecordService.updateById(tronUnfreezeRecord) ? 1 : 0);
    }

    /**
     * 删除冻结解冻记录
     */
    @PreAuthorize("@ss.hasPermi('tron:unfreeze:remove')" )
    @Log(title = "冻结解冻记录" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(iTronUnfreezeRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
