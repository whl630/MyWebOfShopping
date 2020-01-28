package com.servlet.home.order;

import com.goods.Good;
import com.order.Order;
import com.service.OrderService;
import com.service.impl.GoodsAndCustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class getOrder {
    @Autowired
    private OrderService orderService;
    @Autowired
    private GoodsAndCustomerServiceImpl goodsAndCustomerService;
    //按条件查询订单渲染到前台页面上
    @RequestMapping("/getOrderByOrderState1")
    public String getOrderByOrderState1(Model model,int orderState){
        List<Order> lists = orderService.getOrdersByOrderState(orderState);
        model.addAttribute("unpaid",lists);
        return "home/customerOrders/getOrders";
    }

    //查询所有的订单渲染到前台页面上
    @RequestMapping("/getAllOrders")
    public String getAllOrders(Model model){
        List<Order> lists = orderService.getAllOrder();
        model.addAttribute("orders",lists);
        return "home/customerOrders/getAllOrders";
    }
    @RequestMapping("/getGoodByGoodsIdToOrderPage")
    public String getGoodByGoodsIdToOrderPage(int goodsId,Model model){
        Good good = goodsAndCustomerService.getAGood(goodsId);
        model.addAttribute("goodToOrder",good);
        return "home/customerOrders/getOrders";
    }

    //修改订单信息
    @RequestMapping("/updateOrder")
    public String updateOrder(){
        return "";
    }
}
