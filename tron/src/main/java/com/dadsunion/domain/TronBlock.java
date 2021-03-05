package com.dadsunion.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import com.dadsunion.common.annotation.Excel;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * 区块高度对象 tron_block
 * 
 * @author l8oo8l
 * @date 2021-03-05
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_block")
public class TronBlock implements Serializable {

private static final long serialVersionUID=1L;


    /** 区块高度 */
    @Excel(name = "区块高度")
    private Long block;

    @TableField(exist = false)
    private Map<String, Object> params = new HashMap<>();
}
