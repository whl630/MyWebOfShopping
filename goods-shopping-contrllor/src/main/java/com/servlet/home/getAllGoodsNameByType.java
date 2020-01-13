package com.servlet.home;

import com.goods.Good;
import com.service.impl.GoodsAndCustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/goodsName")
public class getAllGoodsNameByType {
    @Autowired
    private GoodsAndCustomerServiceImpl goodsAndCustomerService;

    //遍历商品名
    @RequestMapping("/listName")
    public String listGoodsName(int categoryId, Model model){
        List<Good> lists = goodsAndCustomerService.getSomeGoodsByCategoryId(categoryId);
        model.addAttribute("goods",lists);
        return "home/getGoodName/listGoodsNameByType";
    }


    //秒杀商品
    @RequestMapping("/killPrice")
    public String killPrice(){
        return "home/homelistGoods/listSomeKillPrice";
    }
}
