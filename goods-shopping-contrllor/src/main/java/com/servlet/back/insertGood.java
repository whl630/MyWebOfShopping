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
    private GoodsAndCustomersService customersService;
    public static final String FILE_DIRECTORY = "E:/photo";

    @PostMapping("/insertGood")
    public String insert(@Valid Good good,BindingResult bindingResult, MultipartFile imgurl){
        good.setImgurl(String.valueOf(imgurl));
        String filename = imgurl.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        File file = new File(path);
        try {
            imgurl.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (bindingResult.hasErrors()){
            return "backstage/goods/insertGoods";
        }else {
            customersService.addGood(good);
            return "redirect:/listGood";
        }
    }
    //在添加的页面上的select标签上遍历商品类型
    @ModelAttribute("type")
    public List<GoodType> getType(){
        List<GoodType> lists = customersService.getGoodsType();
        return lists;
    }

    //添加商品(通过超链接跳转到添加页面)
    @RequestMapping("/insert")
    public String insert(){
        return "backstage/goods/insertGoods";
    }
}
