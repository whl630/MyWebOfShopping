package com.servlet.details;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/details")
public class getDetails {
    @RequestMapping("/getDetails")
    public String getDetails(){
        return "home/details/getDetails";
    }
}
