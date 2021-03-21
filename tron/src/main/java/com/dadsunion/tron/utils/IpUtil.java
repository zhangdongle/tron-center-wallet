package com.dadsunion.tron.utils;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class IpUtil {

    public static String getIpAddress(ServletRequest request) {
        String ip = ((HttpServletRequest) request).getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = ((HttpServletRequest) request).getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = ((HttpServletRequest) request).getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = ((HttpServletRequest) request).getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = ((HttpServletRequest) request).getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }

    public static boolean validWhiteIp(ServletRequest request, String whiteIp){
        if (!StringUtils.isEmpty(whiteIp)) {
            boolean b = whiteIp.equals(getIpAddress(request));
            if(!b){
                log.error("ip is invalid");
                return false;
            }
        }
        return true;
    }
}