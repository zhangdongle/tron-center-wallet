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
import com.dadsunion.tron.domain.TronCoinType;
import com.dadsunion.tron.service.ITronCoinTypeService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 币种管理Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/cointype" )
public class TronCoinTypeController extends BaseController {

    private final ITronCoinTypeService iTronCoinTypeService;

    /**
     * 查询币种管理列表
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronCoinType tronCoinType) {
        startPage();
        List<TronCoinType> list = iTronCoinTypeService.queryList(tronCoinType);
        return getDataTable(list);
    }

    /**
     * 导出币种管理列表
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:export')" )
    @Log(title = "币种管理" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronCoinType tronCoinType) {
        List<TronCoinType> list = iTronCoinTypeService.queryList(tronCoinType);
        ExcelUtil<TronCoinType> util = new ExcelUtil<TronCoinType>(TronCoinType.class);
        return util.exportExcel(list, "cointype" );
    }

    /**
     * 获取币种管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Long id) {
        return AjaxResult.success(iTronCoinTypeService.getById(id));
    }

    /**
     * 新增币种管理
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:add')" )
    @Log(title = "币种管理" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronCoinType tronCoinType) {
        return toAjax(iTronCoinTypeService.save(tronCoinType) ? 1 : 0);
    }

    /**
     * 修改币种管理
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:edit')" )
    @Log(title = "币种管理" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronCoinType tronCoinType) {
        return toAjax(iTronCoinTypeService.updateById(tronCoinType) ? 1 : 0);
    }

    /**
     * 删除币种管理
     */
    @PreAuthorize("@ss.hasPermi('tron:cointype:remove')" )
    @Log(title = "币种管理" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(iTronCoinTypeService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
