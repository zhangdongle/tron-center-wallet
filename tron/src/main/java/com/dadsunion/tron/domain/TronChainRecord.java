package com.dadsunion.tron.domain;

import java.io.Serializable;
import java.math.BigDecimal;
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
 * 波场链上交互信息对象 tron_chain_record
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_chain_record")
public class TronChainRecord implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 类型，1.转账，2.带宽，3流量，4.合约 */
    @Excel(name = "类型，1.转账，2.带宽，3流量，4.合约")
    private Integer type;

    /** 区块高度 */
    @Excel(name = "区块高度")
    private Long height;

    /** 合约地址 */
    @Excel(name = "合约地址")
    private String contractAddr;

    /** 发送地址 */
    @Excel(name = "发送地址")
    private String from;

    /** 目标地址 */
    @Excel(name = "目标地址")
    private String to;

    /** 金额，没有小数位 */
    @Excel(name = "金额，没有小数位")
    private Long amount;

    /** 消耗带宽 */
    @Excel(name = "消耗带宽")
    private Long bandwidth;

    /** 消耗能量 */
    @Excel(name = "消耗能量")
    private Long energy;

    /** 消耗trx */
    @Excel(name = "消耗trx")
    private BigDecimal bornTrx;

    /** 区块信息 */
    @Excel(name = "区块信息")
    private String blockInfo;

    /** 状态，1.已发送，2.打包中，3.成功，4，失败 */
    @Excel(name = "状态，1.已发送，2.打包中，3.成功，4，失败")
    private Integer state;

    /** 失败信息 */
    @Excel(name = "失败信息")
    private String errMsg;

    /** 关联ID */
    @Excel(name = "关联ID")
    private Long relatedId;

    /** 备注 */
    @Excel(name = "备注")
    private String remark;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
