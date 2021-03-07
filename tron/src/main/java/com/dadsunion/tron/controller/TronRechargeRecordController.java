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
import com.dadsunion.tron.domain.TronRechargeRecord;
import com.dadsunion.tron.service.ITronRechargeRecordService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 充值记录Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/recharge" )
public class TronRechargeRecordController extends BaseController {

    private final ITronRechargeRecordService iTronRechargeRecordService;

    /**
     * 查询充值记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronRechargeRecord tronRechargeRecord) {
        startPage();
        List<TronRechargeRecord> list = iTronRechargeRecordService.queryList(tronRechargeRecord);
        return getDataTable(list);
    }

    /**
     * 导出充值记录列表
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:export')" )
    @Log(title = "充值记录" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronRechargeRecord tronRechargeRecord) {
        List<TronRechargeRecord> list = iTronRechargeRecordService.queryList(tronRechargeRecord);
        ExcelUtil<TronRechargeRecord> util = new ExcelUtil<TronRechargeRecord>(TronRechargeRecord.class);
        return util.exportExcel(list, "recharge" );
    }

    /**
     * 获取充值记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Long id) {
        return AjaxResult.success(iTronRechargeRecordService.getById(id));
    }

    /**
     * 新增充值记录
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:add')" )
    @Log(title = "充值记录" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronRechargeRecord tronRechargeRecord) {
        return toAjax(iTronRechargeRecordService.save(tronRechargeRecord) ? 1 : 0);
    }

    /**
     * 修改充值记录
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:edit')" )
    @Log(title = "充值记录" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronRechargeRecord tronRechargeRecord) {
        return toAjax(iTronRechargeRecordService.updateById(tronRechargeRecord) ? 1 : 0);
    }

    /**
     * 删除充值记录
     */
    @PreAuthorize("@ss.hasPermi('tron:recharge:remove')" )
    @Log(title = "充值记录" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(iTronRechargeRecordService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
