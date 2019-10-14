package com.skeyedu.controller;

import com.skeyedu.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/backend")
public class BackendController {
    private Logger logger = Logger.getLogger(IndexController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String index(){
        return "main";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "welcome";
    }
}
