package com.servlet.back;

import com.goods.Good;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class insertGood {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;
    //自定义一个用来上传和下载的前缀路径，用来进行拼接。
    public static final String FILE_DIRECTORY = "E:\\img";

    //添加商品
    @PostMapping("/insertGood")
    public String insert(@Valid Good good,BindingResult bindingResult, MultipartFile photo){
        String filename = photo.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        good.setImgurl(path);
        File file = new File(path);
        try {
            photo.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        goodsAndCustomersService.addGood(good);
        return "redirect:/listGood";

    }

    //添加商品(通过超链接跳转到添加页面)
    @RequestMapping("/insert")
    public String insert(){
        return "backstage/goods/insertGoods";
    }

    //删除操作
    @RequestMapping("/deleteGood")
    public String deleteGood(int goodsId){
        int num = goodsAndCustomersService.deleteGood(goodsId);
        if (num > 0){
            return "成功";
        }else {
            return "失败";
        }
    }

    //修改商品信息(通过超链接跳转到修改页面),同时将要修改的数据渲染到网页上
    @RequestMapping("/update")
    public String update(int goodsId, Model model){
        Good good = goodsAndCustomersService.getAGood(goodsId);
        model.addAttribute("g",good);
        return "backstage/goods/updateGood";
    }

    //修改,并且商品编号设为只读
    @PostMapping("/updateGood")
    public ModelAndView updateGood(@Valid Good good, BindingResult bindingResult, MultipartFile photo){
        ModelAndView mav = new ModelAndView();
        String filename = photo.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        good.setImgurl(path);
        File file = new File(path);
        try {
            photo.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        int num = goodsAndCustomersService.updateGood(good);
        if (num > 0){
            mav.setViewName("redirect:/listGood");
        }else {
            mav.setViewName("redirect:/update");
        }
        return mav;
    }
}
