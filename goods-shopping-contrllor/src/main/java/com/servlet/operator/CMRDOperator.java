package com.servlet.operator;

import com.goods.GoodType;
import com.operator.Operator;
import com.operator.OperatorType;
import com.service.OperatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/operator")
public class CMRDOperator {
    @Autowired
    private OperatorService operatorService;

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
}
