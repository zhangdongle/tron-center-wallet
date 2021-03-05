package com.dadsunion.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.dadsunion.common.annotation.Excel;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 地址管理对象 tron_address
 *
 * @author l8oo8l
 * @date 2021-03-05
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@TableName("tron_address")
public class TronAddress implements Serializable {

  private static final long serialVersionUID = 1L;

  /** $column.columnComment */
  @TableId(value = "id")
  private Long id;

  /** 用户ID */
  @Excel(name = "用户ID")
  private String userId;

  /** 地址 */
  @Excel(name = "地址")
  private String address;

  /** 是否已激活，0.未激活，1.已激活 */
  @Excel(name = "是否已激活，0.未激活，1.已激活")
  private Integer activated;

  /** 秘钥 */
  @Excel(name = "秘钥")
  private String secretkey;

  /** $column.columnComment */
  private Date createTime;

  /** $column.columnComment */
  private Date updateTime;

  @TableField(exist = false)
  private Map<String, Object> params = new HashMap<>();
}
