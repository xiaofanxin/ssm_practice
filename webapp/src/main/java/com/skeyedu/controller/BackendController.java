package com.skeyedu.controller;

import com.skeyedu.pojo.MemberSearchParam;
import com.skeyedu.service.UserService;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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

//    public void returnJson(HttpServletResponse response, Map<String, Object> map){
//        try {
//            JsonConfig jsonConfig = new JsonConfig();
//            jsonConfig.registerJsonValueProcessor(Date.class, new JsonValueProcessor());
//
//
//
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//    }


    @RequestMapping("/userList")
    public String userList(MemberSearchParam memberSearchParam, HttpServletRequest request, HttpServletResponse response){
        String method = request.getMethod();
        logger.info("请求类型为：" + method);
//        if("POST".equals(request.getMethod())){
//            Map<String, Object> ajaxReturn = new HashMap<>();
//            ajaxReturn = userService.getMemberList(memberSearchParam);
//            this.returnJson(response, ajaxReturn);
//            return null;
//        }
        return "userList";
    }

    @ResponseBody
    @RequestMapping("userAjaxList")
    public Map<String, Object> UserAjaxList(MemberSearchParam memberSearchParam){
        logger.info("入参： "+ memberSearchParam);
        Map<String, Object> ajaxReturn = new HashMap<String, Object>();
        ajaxReturn = userService.getMemberList(memberSearchParam);
        logger.info(ajaxReturn.toString());
        return ajaxReturn;
    }




}
