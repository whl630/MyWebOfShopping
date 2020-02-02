package com.servlet.home.order.scoring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scoring")
public class getScoringToOrder {
    @RequestMapping("/goodScoring")
    public String getScoring(){

        return "home/customerOrders/scoring/GoodScoring";
    }
}
