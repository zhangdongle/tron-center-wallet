package com.dadsunion.web.controller.tron;

import com.dadsunion.tron.vo.TronNotifyVo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("api/notify")
public class TestNotifyController {

    @ResponseBody
    @PostMapping
    public String notify(@RequestBody TronNotifyVo notifyVo) {
        log.info("回调测试,{}", notifyVo);
        return "SUCCESS";
    }
}