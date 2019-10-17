package com.skeyedu.interceptor;

import com.skeyedu.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexController implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String url = request.getRequestURI();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("USER_SESSION");

        if(user != null){
            return true;
        }

        System.out.println("----------进入拦截器，没有被放行。------------");
        request.setAttribute("msg", "您还没有登陆，请先登录！");
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
