package com.dadsunion.tron.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class SyncStateDto {

	@ApiModelProperty("状态设置")
	private Integer state;
}
