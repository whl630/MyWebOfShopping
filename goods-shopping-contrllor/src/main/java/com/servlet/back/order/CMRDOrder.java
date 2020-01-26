package com.servlet.back.order;

import com.github.pagehelper.PageInfo;
import com.goods.Good;
import com.order.Order;
import com.service.GoodsAndCustomersService;
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
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;

    //去往订单主视图
    @RequestMapping("/listAllOrders")
    public String listAllOrders(){
        return "backstage/order/listAllOrders";
    }
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
        mav.setViewName("backstage/order/getAllOrders");
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


    //点击进入未支付订单视图
    @RequestMapping("/listOrdersByOrderState1")
    public String listOrdersByOrderState1(){
        return "backstage/order/listOrdersByOrderState1";
    }

    //点击进入已支付订单视图
    @RequestMapping("/listOrdersByOrderState2")
    public String listOrdersByOrderState2(){
        return "backstage/order/listOrdersByOrderState2";
    }
    //点击进入未签收订单视图
    @RequestMapping("/listOrdersByOrderState3")
    public String listOrdersByOrderState3(){
        return "backstage/order/listOrdersByOrderState3";
    }
    //点击进入已签收订单视图
    @RequestMapping("/listOrdersByOrderState4")
    public String listOrdersByOrderState4(){
        return "backstage/order/listOrdersByOrderState4";
    }

    //根据订单状态查询相应的订单
    @RequestMapping("/GetOrderByOrderState")
    public String GetOrderByOrderState(String orderState,Model model){
        List<Order> orders = orderService.getOrdersByOrderState(orderState);
        model.addAttribute("orders",orders);
        return "backstage/order/getOrdersByOrderState";
    }


    //关联到商品查询
    //查询单个商品
    @RequestMapping("/getGoods")
    public String getGoods(int goodsId, Model model){
        Good good = goodsAndCustomersService.getAGood(goodsId);

        model.addAttribute("good",good);
        return "backstage/order/getGoodByOrder";
    }
}
