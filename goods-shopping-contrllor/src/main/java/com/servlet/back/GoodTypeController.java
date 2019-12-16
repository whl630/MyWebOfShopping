package com.servlet.back;

import com.github.pagehelper.PageInfo;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class GoodTypeController {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;
    //遍历商品类型到视图
    @RequestMapping("/getGoodsType")
    public String getGoodsType(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                               @RequestParam(defaultValue = "5",required = false,name = "pageSize") int pageSize,
                               Model model){
        List<GoodType> lists = goodsAndCustomersService.getAllGoodsType(pageNum,pageSize);
        PageInfo<GoodType> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("type",pageInfo);
        return "backstage/types/goodsType";
    }
    //在添加的页面上的select标签上遍历商品类型
    @ModelAttribute("type")
    public List<GoodType> getType(){
        List<GoodType> lists = goodsAndCustomersService.getGoodsType();
        return lists;
    }
    @RequestMapping("/insertType")
    public String insertGoodType(){
        return "backstage/types/insertGoodType";
    }
    //添加操作
    @PostMapping("/insertGoodType")
    public ModelAndView insertGoodType(GoodType goodType){
        ModelAndView modelAndView = new ModelAndView();
        int num = goodsAndCustomersService.insertGoodsType(goodType);
        if (num > 0){
            modelAndView.setViewName("redirect:getGoodsType");
        }
        return modelAndView;
    }
}
