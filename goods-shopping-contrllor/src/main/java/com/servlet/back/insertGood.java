package com.servlet.back;

import com.goods.Good;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class insertGood {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;
    public static final String FILE_DIRECTORY = "C:/Users/looki/Desktop/photo";

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
    //在添加的页面上的select标签上遍历商品类型
    @ModelAttribute("type")
    public List<GoodType> getType(){
        List<GoodType> lists = goodsAndCustomersService.getGoodsType();
        return lists;
    }

    //添加商品(通过超链接跳转到添加页面)
    @RequestMapping("/insert")
    public String insert(){
        return "backstage/goods/insertGoods";
    }
}
