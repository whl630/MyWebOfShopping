package com.servlet.adress;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/buy")
public class CRMDWirteAdress {

    //直接通过超链接进入收货地址填写
    @RequestMapping("/getAdress")
    public String getAdress(){
        return "home/wirteAddress/WirteAddress";
    }

}
