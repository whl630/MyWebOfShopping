package com.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

public class MyInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response, Object handler) throws Exception {
        return false;
    }
}
