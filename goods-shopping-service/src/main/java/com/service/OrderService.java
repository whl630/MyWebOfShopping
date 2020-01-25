package com.service;

import com.order.Order;
import com.orders.OrdersDao;

import java.util.List;

public interface OrderService {
    //遍历所有订单
    List<Order> getAllOrders(int pageNum, int pageSize);
    //查询一条订单
    Order getAOrderByOrderId(int ordersId);
    //删除订单
    int delOrder(int ordersId);
    //修改订单
    int updateOrder(Order order);
    //添加订单
    int addOrder(Order order);
}
