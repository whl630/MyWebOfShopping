package com.servlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class getModelAndView {
    //进入购物主页面
    @RequestMapping("/list")
    public String listHome(){
        return "home/shoppingHome";
    }
    //进入用户的登录界面(CSS3动态背景登录页面)
    @RequestMapping("/login1")
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/userLogin");
        return modelAndView;
    }

    @RequestMapping("/slign")
    public ModelAndView slign(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/customerSlignUp");
        return modelAndView;
    }
}
