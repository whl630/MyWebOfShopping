package com.servlet.back;

import com.github.pagehelper.PageInfo;
import com.goods.Good;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class getBackHome {
    @Autowired
    private GoodsAndCustomersService customersService;

    //进入操作员的登录界面
    @RequestMapping("/login2")
    public ModelAndView login2(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("operator/operatorLogin");
        return modelAndView;
    }
    //后台布局主界面
    @RequestMapping("/backhome")
    public String listHome2(){
        return "backstage/backsageHome";
    }
//    //后台的商品信息界面
//    @RequestMapping("/listGoods")
//    public String listGoods(){
//        return "backstage/goods/listGoods";
//    }
    //后台的商品信息界面
    @RequestMapping("/listgooddetails")
    public String listgooddetails(){
        return "backstage/details/gooddetailsOperation";
    }

    //遍历商品类型到视图
    @RequestMapping("/getGoodsType")
    public String getGoodsType(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                               @RequestParam(defaultValue = "3",required = false,name = "pageSize") int pageSize,
                                Model model){
        List<GoodType> lists = customersService.getAllGoodsType(pageNum,pageSize);
        PageInfo<GoodType> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("type",pageInfo);
        return "backstage/types/goodsType";
    }

    //遍历商品到视图
    @RequestMapping("/listGoods")
    public String listGoods(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                               @RequestParam(defaultValue = "8",required = false,name = "pageSize") int pageSize,
                               Model model){
        List<Good> lists = customersService.getAllGoods(pageNum,pageSize);
        PageInfo<Good> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("good",pageInfo);
        return "backstage/goods/listGoods";
    }
}
