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
 * 消耗记录对象 tron_consume_record
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_consume_record")
public class TronConsumeRecord implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 链上记录 */
    @Excel(name = "链上记录")
    private Long chainId;

    /** 消耗地址 */
    @Excel(name = "消耗地址")
    private String from;

    /** 目标地址 */
    @Excel(name = "目标地址")
    private String to;

    /** 类型：1.激活，2.获取带宽，3.获取能量 */
    @Excel(name = "类型：1.激活，2.获取带宽，3.获取能量")
    private Integer type;

    /** 状态：0.待处理，1.处理中，2.处理完成 */
    @Excel(name = "状态：0.待处理，1.处理中，2.处理完成")
    private Integer state;

    /** 消耗数量 */
    @Excel(name = "消耗数量")
    private BigDecimal count;

    /** 创建时间 */
    private Date createTime;

    /** $column.columnComment */
    private Date updateTime;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
