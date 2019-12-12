package com;

import com.customer.Customer;
import com.service.CustomersAndLoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:service-spring.xml")
public class CustomerText {
    @Autowired
    private CustomersAndLoginService customersAndLoginService;

    @Test
    public void insertCustomer(){
        Customer customer = new Customer("whl234","123456","wangwu","王五","123456789","南昌");
        int num = customersAndLoginService.insertCustomer(customer);
        if (num > 0){
            System.out.println("添加成功！");
        }
    }
    @Test
    public void getAllCustomers(){
        List<Customer> customers = customersAndLoginService.getAllCustomers();
        for (Customer customer : customers) {
            System.out.println(customer);
        }
    }
}
