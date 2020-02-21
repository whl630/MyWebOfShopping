package com.servlet.back.details;

import com.github.pagehelper.PageInfo;
import com.goods.Good;
import com.goods.GoodsDetails;
import com.service.GoodsDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/back")
public class GoodDetailsController {
    @Autowired
    private GoodsDetailsService goodsDetailsService;

    //查询所有的商品详情信息
    @RequestMapping("/getAllGoodsDetails")
    public String listGoodsDetails(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                            @RequestParam(defaultValue = "12",required = false,name = "pageSize") int pageSize,
                            Model model){
        List<GoodsDetails> lists = goodsDetailsService.getAllBePageToGoodsDetails(pageNum,pageSize);
        PageInfo<GoodsDetails> pageInfo = new PageInfo<>(lists,5);
        model.addAttribute("details",pageInfo);
        return "backstage/details/getgooddetails";
    }

    //后台的商品信息界面
    @RequestMapping("/listgooddetails")
    public String listDetails(){
        return "backstage/details/gooddetailsOperation";
    }
    //删除操作
    @RequestMapping("/deleteGoodDetails")
    public String deleteGoodDetails(int detailsId){
        int num = goodsDetailsService.deleteGoodDetails(detailsId);
        if (num > 0){
            return "删除成功!";
        }else {
            return "删除失败!";
        }
    }
    //修改商品进入页面并查询要修改的数据
    @RequestMapping("/updateDetails")
    public String updateDetails(int detailsId,Model model){
        GoodsDetails goodsDetails = goodsDetailsService.getAGoodsDetailsByDetailsId(detailsId);
        model.addAttribute("details",goodsDetails);
        return "backstage/details/updateDetails";
    }
    //修改商品详情数据
    @PostMapping("/update")
    public ModelAndView update(@Valid GoodsDetails goodsDetails, BindingResult bindingResult){
        ModelAndView modelAndView = new ModelAndView();
        int number = goodsDetailsService.updtaeGoodDetails(goodsDetails);
        if (number > 0){
            modelAndView.setViewName("redirect:listgooddetails");
        }else {
            modelAndView.setViewName("error/GoodError");
        }
        return modelAndView;
    }
}
