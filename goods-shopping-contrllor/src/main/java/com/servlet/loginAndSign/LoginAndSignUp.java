package com.servlet.loginAndSign;

import com.customer.Customer;
import com.operator.Operator;
import com.service.CustomersAndLoginService;
import com.service.OperatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class LoginAndSignUp {
    @Autowired
    private CustomersAndLoginService customersAndLoginService;
    @Autowired
    private OperatorService operatorService;

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
    public ModelAndView getLogin(String account, String password,HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        Customer customer = customersAndLoginService.getACustomer(account,password);
        if (customer != null){
            session.setAttribute("customer",customer);
            mav.setViewName("redirect:home");
        }else {
            mav.setViewName("redirect:login");
        }
        return mav;
    }
    //顾客注销
    @RequestMapping("/customerQuit")
    public String customerQuit(HttpServletRequest request){
        request.getSession().removeAttribute("customer");
        return "redirect:home";
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
    //验证操作员账号和密码
    @RequestMapping("/operatorLogin2")
    public ModelAndView operatorLogin2(String operatorAccount, String operatorPassword, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
       HttpSession session = request.getSession();
        Operator operator = operatorService.getAnOperatorByAccount(operatorAccount,operatorPassword);
        if (operator != null){
            modelAndView.setViewName("redirect:backhome");
            session.setAttribute("operator",operator);
        }else {
            modelAndView.setViewName("redirect:operatorLogin");
        }
        return modelAndView;
    }

    //退出账号
    @RequestMapping("/quit")
    public ModelAndView quit(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        request.getSession().removeAttribute("operator");
        modelAndView.setViewName("redirect:backhome");
        return modelAndView;
    }


}
