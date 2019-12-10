package com.service;

import com.customer.Customer;
import com.customer.CustomersDao;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomersService {
    List<CustomersDao> getAllWithPageCustomers(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    List<CustomersDao> getAllCustomers();
    int updateCustomer(Customer customer);
    int insertCustomer(Customer customer);
    int cencelCustomer(int aid);//注销账号
}
