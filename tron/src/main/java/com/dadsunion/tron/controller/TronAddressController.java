package com.dadsunion.tron.controller;

import java.util.List;
import java.util.Arrays;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.dadsunion.tron.delegate.TronDelegate;
import com.dadsunion.tron.dto.CreateAddressDto;
import com.dadsunion.tron.vo.CreateAddressVo;
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
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.service.ITronAddressService;
import com.dadsunion.common.utils.poi.ExcelUtil;
import com.dadsunion.common.core.page.TableDataInfo;

/**
 * 地址管理Controller
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@RestController
@RequestMapping("/tron/address")
public class TronAddressController extends BaseController {

	private final ITronAddressService iTronAddressService;

	private final TronDelegate tronService;

	/**
	 * 查询地址管理列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:list')")
	@GetMapping("/list")
	public TableDataInfo list(TronAddress tronAddress) {
		startPage();
		List<TronAddress> list = iTronAddressService.queryList(tronAddress);
		return getDataTable(list);
	}

	/**
	 * 导出地址管理列表
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:export')")
	@Log(title = "地址管理", businessType = BusinessType.EXPORT)
	@GetMapping("/export")
	public AjaxResult export(TronAddress tronAddress) {
		List<TronAddress> list = iTronAddressService.queryList(tronAddress);
		ExcelUtil<TronAddress> util = new ExcelUtil<TronAddress>(TronAddress.class);
		return util.exportExcel(list, "address");
	}

	/**
	 * 获取地址管理详细信息
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:query')")
	@GetMapping(value = "/{id}")
	public AjaxResult getInfo(@PathVariable("id") Long id) {
		return AjaxResult.success(iTronAddressService.getById(id));
	}

	/**
	 * 新增地址管理
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:add')")
	@Log(title = "地址管理", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@RequestBody TronAddress tronAddress) {
		return toAjax(iTronAddressService.save(tronAddress) ? 1 : 0);
	}

	/**
	 * 新增地址管理
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:add')")
	@Log(title = "自动生成地址，测试用", businessType = BusinessType.INSERT)
	@PostMapping("gen")
	public AjaxResult gen(@RequestBody CreateAddressDto dto) {

		QueryWrapper<TronAddress> wrapper = new QueryWrapper<>();
		wrapper.eq("user_id", dto.getUserId());
		TronAddress tronAddress = iTronAddressService.getOne(wrapper);
		CreateAddressVo addressVo = new CreateAddressVo();
		if (tronAddress == null) {
			String address = tronService.createAddress(dto.getUserId());
			addressVo.setAddress(address);
			addressVo.setActivated(false);
		} else {
			addressVo.setAddress(tronAddress.getAddress());
			addressVo.setActivated(false);
		}
		// 没有则创建地址并返回
		return AjaxResult.success(JSON.toJSONString(R.ok(addressVo)));

	}

	/**
	 * 修改地址管理
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:edit')")
	@Log(title = "地址管理", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@RequestBody TronAddress tronAddress) {
		return toAjax(iTronAddressService.updateById(tronAddress) ? 1 : 0);
	}

	/**
	 * 删除地址管理
	 */
	@PreAuthorize("@ss.hasPermi('tron:address:remove')")
	@Log(title = "地址管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
	public AjaxResult remove(@PathVariable Long[] ids) {
		return toAjax(iTronAddressService.removeByIds(Arrays.asList(ids)) ? 1 : 0);
	}
}
