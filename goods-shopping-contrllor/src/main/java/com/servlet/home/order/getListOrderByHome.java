package com.servlet.home.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class getListOrderByHome {
    @RequestMapping("listOrders")
    public String getListOrders(){
        return "home/customerOrders/listOrders";
    }
}
