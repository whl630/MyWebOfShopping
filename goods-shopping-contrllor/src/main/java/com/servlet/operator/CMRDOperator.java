package com.servlet.operator;

import com.operator.Operator;
import com.operator.OperatorType;
import com.service.OperatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/operator")
public class CMRDOperator {
    @Autowired
    private OperatorService operatorService;
    //自定义一个用来上传和下载的前缀路径，用来进行拼接。
    public static final String FILE_DIRECTORY = "C:\\Users\\looki\\IdeaProjects\\Shopping-goods\\goods-shopping-contrllor\\src\\main\\resources\\static\\images";

    @RequestMapping("/getOperators")
    public String getOperator(Model model){
        List<Operator> lists = operatorService.getAllOperators();
        model.addAttribute("operator",lists);
        return "backstage/operator/getOperator";
    }

    @RequestMapping("/list")
    public String listOperator(){
        return "backstage/operator/listOperator";
    }

    //修改操作员用于升职或降职
    @RequestMapping("/updateOperator")
    public String updateOperator(int operatorId,Model model){
        Operator operator = operatorService.getAOperator(operatorId);
        model.addAttribute("operator",operator);
        return "backstage/operator/updateOperator";
    }



    @ModelAttribute("operatorType")
    public List<OperatorType> getType(){
        List<OperatorType> lists = operatorService.getAllOperatorTypes();
        return lists;
    }

    @RequestMapping("/update")
    public String updateOperator(int operatorTypeId,int operatorId){
      int num = operatorService.updateOperatorByOperatorTypeId(operatorTypeId,operatorId);
        if (num > 0){
            return "redirect:list";
        }else {
            return "backstage/operator/updateOperator";
        }
    }
    //进入添加管理员视图
    @RequestMapping("/insertOperator")
    public ModelAndView insertOperator(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("backstage/operator/insertOperator");
        return modelAndView;
    }
    //添加管理员
    @RequestMapping("/operatorAdd")
    public String addOperator(@Valid Operator operator, BindingResult bindingResult,MultipartFile picture){
        String filename = picture.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        operator.setOperatorPicture(path);
        File file = new File(path);
        try {
            picture.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        operatorService.insertOperator(operator);
        return "redirect:/operator/list";
    }

}
