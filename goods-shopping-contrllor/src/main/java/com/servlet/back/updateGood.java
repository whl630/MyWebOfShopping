package com.servlet.back;

import com.goods.Good;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;

@Controller
public class updateGood {
    @Autowired
    private GoodsAndCustomersService customersService;
    public static final String FILE_DIRECTORY = "C:/Users/looki/Desktop/photo";
    //修改商品信息(通过超链接跳转到修改页面)
    @RequestMapping("/update")
    public String update(@Valid int id, Model model){
        Good good = customersService.getAGood(id);
        model.addAttribute("good",good);
        return "backstage/goods/updateGood";
    }

    //将要修改的数据渲染到网页上
    @ModelAttribute("good")
    public Good getAGood(int goodsId){
        Good good = customersService.getAGood(goodsId);
        return good;
    }
    //修改
    @RequestMapping("/updateGood")
    public String updateGood(@Valid Good good, MultipartFile imgurl, BindingResult bindingResult){
        String filename = imgurl.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        File file = new File(path);
        try {
            imgurl.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (bindingResult.hasErrors()){
            return "backstage/goods/updateGood";
        }else {
            customersService.updateGood(good);
            return "redirect:backstage/goods/listGoods";
        }
    }


    //删除操作
    @RequestMapping("/deleteGood")
    public String deleteGood(@Valid int goodsId){
        int num = customersService.deleteGood(goodsId);
        if (num > 0){
            return "redirect:backstage/goods/listGoods";
        }else {
            return "error/GoodError";
        }
    }
}
