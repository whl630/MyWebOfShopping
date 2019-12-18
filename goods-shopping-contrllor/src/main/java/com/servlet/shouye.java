package com.servlet;

import com.github.pagehelper.PageInfo;
import com.goods.Good;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class shouye {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;
    //进入购物主页面
    @RequestMapping("/home")
    public String listHome(){
        return "home/home";
    }

    @RequestMapping("/listGoodsByPage")
    public String listGoodsByPage(){
        return "home/listGood/listGoodsByPage";
    }
    //遍历商品到视图
    @RequestMapping("/getGoods")
    public String listGoods(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                            @RequestParam(defaultValue = "18",required = false,name = "pageSize") int pageSize,
                            Model model){
        List<Good> lists = goodsAndCustomersService.getAllGoods(pageNum,pageSize);
        PageInfo<Good> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("goods",pageInfo);
        return "home/listHtml";
}
    //遍历商品名
//    @RequestMapping("/listName")
//    @ResponseBody
//    public List<Good> listGoodsName(int categoryId){
//        List<Good> lists = customersService.getSomeGoods(categoryId);
//        return lists;
//    }
    @RequestMapping("/listName")
    public String getSomeGoodsName(int categoryId,Model model){
        List<Good> lists = goodsAndCustomersService.getSomeGoodsByCategoryId(categoryId);
        model.addAttribute("name",lists);
        return "listGoodsName";
    }
}
