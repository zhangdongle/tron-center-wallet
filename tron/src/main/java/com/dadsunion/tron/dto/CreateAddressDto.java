package com.dadsunion.tron.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class CreateAddressDto {

    @NotNull
    @Length(max = 32)
    @ApiModelProperty("唯一ID，区分用户，避免重复创建，同一个用户只返回同一个地址,最大32位")
    private String userId;

}