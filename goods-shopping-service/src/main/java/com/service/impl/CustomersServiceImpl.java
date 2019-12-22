package com.service.impl;

import com.customer.Customer;
import com.customer.CustomersDao;
import com.service.CustomersAndLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomersServiceImpl implements CustomersAndLoginService {
    @Autowired
    private CustomersDao customersDao;
    @Override
    public List<Customer> getAllWithPageCustomers(int pageNum, int pageSize) {
        return customersDao.getAllWithPageCustomers(pageNum,pageSize);
    }

    @Override
    public List<Customer> getAllCustomers() {
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

    @Override
    public Customer getACustomer(String account, String password) {
        return customersDao.getACustomer(account,password);
    }

    @Override
    public Customer getACustomerByAid(int aid) {
        return customersDao.getACustomerByAid(aid);
    }
}
