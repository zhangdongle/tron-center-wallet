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
 * 币种管理对象 tron_coin_type
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_coin_type")
public class TronCoinType implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 代币符号（唯一） */
    @Excel(name = "代币符号" , readConverterExp = "唯=一")
    private String symbol;

    /** 类型：0.主币,1.TRC10,2.TRC20 */
    @Excel(name = "类型：0.主币,1.TRC10,2.TRC20")
    private Integer type;

    /** 是否主币 */
    @Excel(name = "是否主币")
    private Integer isMaster;

    /** 币种名称 */
    @Excel(name = "币种名称")
    private String name;

    /** 合约地址 */
    @Excel(name = "合约地址")
    private String contractAddr;

    /** 小数位 */
    @Excel(name = "小数位")
    private Integer scale;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();

    public boolean isMaster(){
    	return isMaster == 1;
	}
}
