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
import com.dadsunion.tron.domain.TronSystemAddress;
import com.dadsunion.tron.service.ITronSystemAddressService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 系统地址Controller
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/sysaddress" )
public class TronSystemAddressController extends BaseController {

    private final ITronSystemAddressService iTronSystemAddressService;

    /**
     * 查询系统地址列表
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:list')")
    @GetMapping("/list")
    public TableDataInfo list(TronSystemAddress tronSystemAddress) {
        startPage();
        List<TronSystemAddress> list = iTronSystemAddressService.queryList(tronSystemAddress);
        return getDataTable(list);
    }

    /**
     * 导出系统地址列表
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:export')" )
    @Log(title = "系统地址" , businessType = BusinessType.EXPORT)
    @GetMapping("/export" )
    public AjaxResult export(TronSystemAddress tronSystemAddress) {
        List<TronSystemAddress> list = iTronSystemAddressService.queryList(tronSystemAddress);
        ExcelUtil<TronSystemAddress> util = new ExcelUtil<TronSystemAddress>(TronSystemAddress.class);
        return util.exportExcel(list, "sysaddress" );
    }

    /**
     * 获取系统地址详细信息
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:query')" )
    @GetMapping(value = "/{id}" )
    public AjaxResult getInfo(@PathVariable("id" ) Integer id) {
        return AjaxResult.success(iTronSystemAddressService.getById(id));
    }

    /**
     * 新增系统地址
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:add')" )
    @Log(title = "系统地址" , businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TronSystemAddress tronSystemAddress) {
        return toAjax(iTronSystemAddressService.save(tronSystemAddress) ? 1 : 0);
    }

    /**
     * 修改系统地址
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:edit')" )
    @Log(title = "系统地址" , businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TronSystemAddress tronSystemAddress) {
        return toAjax(iTronSystemAddressService.updateById(tronSystemAddress) ? 1 : 0);
    }

    /**
     * 删除系统地址
     */
    @PreAuthorize("@ss.hasPermi('tron:sysaddress:remove')" )
    @Log(title = "系统地址" , businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}" )
    public AjaxResult remove(@PathVariable Integer[] ids) {
        return toAjax(iTronSystemAddressService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
    }
}
