package com.skeyedu.controller;

import com.skeyedu.service.UserService;

import com.skeyedu.pojo.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/home")
public class IndexController {
    private Logger logger = Logger.getLogger(IndexController.class);

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(){
        return "login";
    }

    /**
     * 登陆界面
     * @param user
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user, Model model, HttpSession session){
        String username = user.getUsername();
        String password = user.getPassword();
        logger.info("用户名："+username);
        logger.info("密码："+ password);

        User userInfo = userService.getUserByName(username);
        logger.info(userInfo.toString());

        if (userInfo != null && userInfo.getUsername() != null && userInfo.getPassword().equals(password) && userInfo.getPassword() != null){
            session.setAttribute("USER_SESSION", userInfo);
            return "redirect:/backend/index";
        }
        model.addAttribute("msg", "用户名或密码错误，请重新登录！");
        return "login";
    }

    /**
     * 注销页面
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/index";
    }



}
