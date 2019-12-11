package com.customer;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomersDao {
    //分页查询
    List<Customer> getAllWithPageCustomers(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    List<Customer> getAllCustomers();
    int updateCustomer(Customer customer);
    int insertCustomer(Customer customer);
    int cencelCustomer(int aid);//注销账号
}
