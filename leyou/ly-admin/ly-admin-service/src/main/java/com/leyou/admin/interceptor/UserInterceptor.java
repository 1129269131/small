package com.leyou.admin.interceptor;

import com.leyou.admin.config.JwtProperties;
import com.leyou.auth.entity.UserInfo;
import com.leyou.auth.utils.JwtUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserInterceptor implements HandlerInterceptor {

    private JwtProperties prop;

    public UserInterceptor(JwtProperties prop){
        this.prop = prop;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        // 获取token
        String token = request.getHeader("access_token");
        try {
            UserInfo user = JwtUtils.getInfoFromToken(token, prop.getPublicKey());
            request.setAttribute("user",user);
            return true;
        } catch (Exception e) {
            System.out.println("解析用户身份失败，加入购物车失败");
            return false;
        }
    }
}
