package com.servlet.home.order.Commentary;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/commentary")
public class getCommentary {
    @RequestMapping("/goodsCommentary")
    public String goodsCommentary(){
        return "home/customerOrders/scoring/Commentary/GoodsCommentary";
    }
}
