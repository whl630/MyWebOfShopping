package com.servlet.back.order;

import com.github.pagehelper.PageInfo;
import com.order.Order;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/order")
public class CMRDOrder {
    @Autowired
    private OrderService orderService;

    //查询所有订单信息
    @RequestMapping("/getAllOrders")
    public ModelAndView getAllOrders(@RequestParam(defaultValue = "1",required = false,name = "pageNum") int pageNum,
                                     @RequestParam(defaultValue = "8",required = false,name = "pageSize") int pageSize,
                                     Model model){
        ModelAndView mav = new ModelAndView();
        //遍历所有订单信息
        List<Order> orders = orderService.getAllOrders(pageNum,pageSize);
        PageInfo<Order> pageInfo = new PageInfo<>(orders,5);
        //保存
        mav.addObject("order",pageInfo);
        return mav;
    }
    //获取一条订单信息
    @RequestMapping("/getAOrder")
    public Order getAOrder(int ordersId,Model model){
        Order order = orderService.getAOrderByOrderId(ordersId);
        return order;
    }
    //修改订单信息
    @RequestMapping("/updateOrder")
    public String updateOrder(){
        return "";
    }

    //删除订单信息
    @RequestMapping("/delOrder")
    public String delOrder(int ordersId){
        int num = orderService.delOrder(ordersId);
        if (num > 0){
            return "成功";
        }else {
            return "失败";
        }
    }

    //添加订单
    @RequestMapping("/addOrder")
    public String addOrder(){
        return "";
    }
}
