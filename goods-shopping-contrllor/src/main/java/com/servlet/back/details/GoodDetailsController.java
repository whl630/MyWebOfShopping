package com.servlet.back.details;

import com.github.pagehelper.PageInfo;
import com.goods.Good;
import com.goods.GoodsDetails;
import com.service.GoodsDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    //添加商品详情数据
    @RequestMapping("/updateDetails")
    public String updateDetails(){
        return "backstage/details/updateDetails";
    }
}
