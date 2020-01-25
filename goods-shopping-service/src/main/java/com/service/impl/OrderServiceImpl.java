package com.service.impl;

import com.order.Order;
import com.orders.OrdersDao;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersDao ordersDao;

    @Override
    public List<Order> getAllOrders(int pageNum, int pageSize) {
        return ordersDao.getAllOrders(pageNum,pageSize);
    }

    @Override
    public Order getAOrderByOrderId(int ordersId) {
        return ordersDao.getAOrderByOrderId(ordersId);
    }

    @Override
    public int delOrder(int ordersId) {
        return ordersDao.delOrder(ordersId);
    }

    @Override
    public int updateOrder(Order order) {
        return ordersDao.updateOrder(order);
    }

    @Override
    public int addOrder(Order order) {
        return ordersDao.addOrder(order);
    }
}
