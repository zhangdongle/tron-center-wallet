package com.dadsunion.demo.feign.fallback;


import com.dadsunion.demo.feign.FeignTestService;

public class FeignTestFallback implements FeignTestService {

    @Override
    public String search(String wd) {
        return null;
    }
}
