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
 * 充值记录对象 tron_recharge_record
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_recharge_record")
public class TronRechargeRecord implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 来源地址 */
    @Excel(name = "来源地址")
    private String fromAddr;

    /** 用户平台地址 */
    @Excel(name = "用户平台地址")
    private String toAddr;

    /** 金额 */
    @Excel(name = "金额")
    private BigDecimal amount;

    /** 状态，0.待归集，1.已归集 */
    @Excel(name = "状态，0.待归集，1.已归集")
    private Integer state;

    /** 通知状态，0.未通知，1.通知成功，2.通知失败 */
    @Excel(name = "通知状态，0.未通知，1.通知成功，2.通知失败")
    private Integer notifySt;

    /** 币种符号 */
    @Excel(name = "币种符号")
    private String symbol;

    /** 链上关联ID */
    @Excel(name = "链上关联ID")
    private Long chainId;

    /** 创建时间 */
    private Date createTime;

    /** 修改时间 */
    private Date updateTime;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
