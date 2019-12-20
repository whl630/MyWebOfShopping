package com.servlet;

import com.goods.Good;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class publicCRMD {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;

    @RequestMapping("/updateForDetails")
    public String update(int goodsId, Model model){
        Good good = goodsAndCustomersService.getAGood(goodsId);
        model.addAttribute("photo",good);
        return "home/details/listDetails";
    }

    //测试图片放大效果
    @RequestMapping("/photo")
    public String update1(){
        return "backstage/customer/listCustomer";
    }
}
