package com.dadsunion.tron.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
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
 * 归集记录对象 tron_collect_record
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_collect_record")
public class TronCollectRecord implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 充值记录ID */
    @Excel(name = "充值记录ID")
    private Long rechargeId;

    /** 充值链上ID */
    @Excel(name = "充值链上ID")
    private Long rechargeChainId;

    /** 归集ID */
    @Excel(name = "归集ID")
    private Long collectChainId;

    /** $column.columnComment */
    @Excel(name = "归集ID")
    private BigDecimal amount;

	/**
	 * 代币符号
	 */
	private String symbol;

    /** 来源地址，用户平台地址 */
    @Excel(name = "来源地址，用户平台地址")
    private String fromAddr;

    /** 目标地址 */
    @Excel(name = "目标地址")
    private String toAddr;

    /** 状态：0.待归集，1.归集中，2.归集完成，3.归集失败 */
    @Excel(name = "状态：0.待归集，1.归集中，2.归集完成，3.归集失败")
    private Integer state;

    /** 创建时间 */
    private Date createTime;

    /** 修改时间 */
    private Date updateTime;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
