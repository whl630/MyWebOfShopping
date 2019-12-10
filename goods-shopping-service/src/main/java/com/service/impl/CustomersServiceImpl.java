package com.service.impl;

import com.customer.Customer;
import com.customer.CustomersDao;
import com.service.CustomersService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CustomersServiceImpl implements CustomersService {
    @Autowired
    private CustomersDao customersDao;
    @Override
    public List<CustomersDao> getAllWithPageCustomers(int pageNum, int pageSize) {
        return customersDao.getAllWithPageCustomers(pageNum,pageSize);
    }

    @Override
    public List<CustomersDao> getAllCustomers() {
        return customersDao.getAllCustomers();
    }

    @Override
    public int updateCustomer(Customer customer) {
        return customersDao.updateCustomer(customer);
    }

    @Override
    public int insertCustomer(Customer customer) {
        return customersDao.insertCustomer(customer);
    }

    @Override
    public int cencelCustomer(int aid) {
        return customersDao.cencelCustomer(aid);
    }


}
