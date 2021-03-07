package com.dadsunion.tron.domain;

import java.io.Serializable;
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
 * 冻结解冻记录对象 tron_unfreeze_record
 * 
 * @author l8oo8l
 * @date 2021-03-06
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_unfreeze_record")
public class TronUnfreezeRecord implements Serializable {

private static final long serialVersionUID=1L;


    /** $column.columnComment */
    @TableId(value = "id")
    private Long id;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 类型：1.带宽，2.能量 */
    @Excel(name = "类型：1.带宽，2.能量")
    private Integer type;

    /** 方向：0.冻结、1.解冻 */
    @Excel(name = "方向：0.冻结、1.解冻")
    private Integer direct;

    /** 状态：0.待处理，1.处理中，2.处理完毕 */
    @Excel(name = "状态：0.待处理，1.处理中，2.处理完毕")
    private Integer state;

    /** 创建时间 */
    private Date createTime;

    /** $column.columnComment */
    private Date updateTime;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
