package com.servlet;

import com.customer.Customer;
import com.service.CustomersAndLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class getModelAndView {
    @Autowired
    private CustomersAndLoginService customersAndLoginService;
    //进入用户的登录界面(CSS3动态背景登录页面)
    @RequestMapping("/login1")
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/userLogin");
        return modelAndView;
    }
    //添加用户信息到数据库
    @RequestMapping("/getSignUp")
    public ModelAndView getSignUp(@Valid Customer customer, BindingResult bindingResult){
        ModelAndView mav = new ModelAndView();
        if(bindingResult.hasErrors()){
            List<FieldError> errors = bindingResult.getFieldErrors();
            for(FieldError error:errors){
                mav.addObject(error.getField(),error.getDefaultMessage() );
            }
            mav.setViewName("redirect:slign");
        }else{
            customersAndLoginService.insertCustomer(customer);
            mav.setViewName("redirect:list");
        }
        return mav;
    }
    @RequestMapping("/slign")
    public ModelAndView slign(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/customerSlignUp");
        return modelAndView;
    }
}
