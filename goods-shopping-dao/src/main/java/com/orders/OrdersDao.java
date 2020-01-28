package com.orders;

import com.order.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersDao {
    //遍历所有订单
    List<Order> getAllOrders(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

    List<Order> getAllOrder();
    //查询一条订单
    Order getAOrderByOrderId(String ordersId);
    //删除订单
    int delOrder(String ordersId);
    //修改订单
    int updateOrder(Order order);
    //添加订单
    int addOrder(Order order);
    //根据订单状态查询订单信息
    List<Order> getOrdersByOrderState(int orderState);
}
