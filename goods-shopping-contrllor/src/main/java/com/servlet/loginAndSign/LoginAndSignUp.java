package com.servlet.loginAndSign;

import com.customer.Customer;
import com.service.CustomersAndLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class LoginAndSignUp {
    @Autowired
    private CustomersAndLoginService customersAndLoginService;
    //进入用户的登录界面(CSS3动态背景登录页面)
    @RequestMapping("/login")
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
            mav.setViewName("redirect:home");
        }
        return mav;
    }

    //添加用户信息到数据库
    @RequestMapping("/getLogin")
    public ModelAndView getLogin(String account, String password, Model model){
        ModelAndView mav = new ModelAndView();
        Customer customer = customersAndLoginService.getACustomer(account,password);
        if (customer != null){
            model.addAttribute("mess","登录成功！");
            mav.setViewName("redirect:home");
        }else {
            model.addAttribute("mess","并没有该账号！");
            mav.setViewName("redirect:login");
        }
        return mav;
    }
    //进入到游客注册页面
    @RequestMapping("/slign")
    public ModelAndView slign(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/customerSlignUp");
        return modelAndView;
    }

    //进入操作员的登录界面
    @RequestMapping("/operatorLogin")
    public ModelAndView operatorLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("operator/operatorLogin");
        return modelAndView;
    }

}
