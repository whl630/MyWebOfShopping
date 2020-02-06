package com.servlet.details;

import com.goods.GoodsDetails;
import com.service.GoodsDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/details")
public class getDetails {
    @Autowired
    private GoodsDetailsService goodsDetailsService;

    @RequestMapping("/getDetails")
    public String getDetails(int goodsId,Model model){
        GoodsDetails goodsDetails = goodsDetailsService.getAGoodsDetailsByGoodsId(goodsId);
        model.addAttribute("details",goodsDetails);
        return "home/details/getDetails";
    }

    @RequestMapping("/getDetails1")
    public String getDetails1(int goodsId,Model model){
        GoodsDetails goodsDetails = goodsDetailsService.getAGoodsDetailsByGoodsId(goodsId);
        model.addAttribute("details",goodsDetails);
        return "home/details/getDetails1";
    }
    //首页通过商品名字导航的视图
    @RequestMapping("/getDetails2")
    public String getDetails2(int goodsId,Model model){
        GoodsDetails goodsDetails = goodsDetailsService.getAGoodsDetailsByGoodsId(goodsId);
        model.addAttribute("details",goodsDetails);
        return "home/details/getDetails2";
    }
}
