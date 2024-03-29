package com.dadsunion.tron.domain;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.dadsunion.common.annotation.Excel;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 系统地址对象 tron_system_address
 *
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_system_address")
public class TronSystemAddress implements Serializable {

	private static final long serialVersionUID = 1L;


	/** $column.columnComment */
	@TableId(value = "id")
	private Integer id;

	/** 系统地址 */
	@Excel(name = "系统地址")
	private String address;

	/** 地址类型 */
	@Excel(name = "地址类型")
	private String type;

	@TableField("private_key")
	@Excel(name = "地址私钥")
	private String privateKey;

	@TableField(exist = false)
	private Map<String, Object> params = new HashMap<>();
}
