package com.servlet.back.customer;

import com.customer.Customer;
import com.github.pagehelper.PageInfo;
import com.service.CustomersAndLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CMRDCustomer {
    @Autowired
    private CustomersAndLoginService customersAndLoginService;


    //遍历所有顾客信息
    @RequestMapping("/listAllCustomers")
    public String getAllCustomers(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                                  @RequestParam(defaultValue = "4",required = false,name = "pageSize") int pageSize,
                                  Model model){
        List<Customer> lists = customersAndLoginService.getAllWithPageCustomers(pageNum,pageSize);
        PageInfo<Customer> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("customers",pageInfo);
        return "backstage/customer/getAllCustomer";
    }

    //通过该地址进入顾客界面
    @RequestMapping("/getCustomer")
    public String getCustomer(){
        return "backstage/customer/listAllCustomer";
    }
    //删除顾客操作
    @RequestMapping("/deleteCustomer")
    public String deleteGood(int aid){
        int num = customersAndLoginService.cencelCustomer(aid);
        if (num > 0){
            return "成功";
        }else {
            return "失败";
        }
    }
    //进入顾客修改界面
    @RequestMapping("/getCustomerUpdate")
    public String getCustomerUpdate(int aid,Model model){
        Customer customer = customersAndLoginService.getACustomerByAid(aid);
        model.addAttribute("customer",customer);
        return "backstage/customer/CustomerUpdate";
    }
    //修改提交
    @RequestMapping("/customerUpdate")
    public ModelAndView customerUpdate(Customer customer){
        ModelAndView modelAndView = new ModelAndView();
        int num = customersAndLoginService.updateCustomer(customer);
            if (num > 0 ){
                modelAndView.setViewName("redirect:getCustomer");
            }else {
                modelAndView.setViewName("error/GoodError");
            }
        return modelAndView;
    }
}
