package com.dadsunion.tron.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class CreateAddressVo {

    @ApiModelProperty("用户钱包地址")
    private String address;

    @ApiModelProperty("是否已激活")
    private boolean activated;
    
}