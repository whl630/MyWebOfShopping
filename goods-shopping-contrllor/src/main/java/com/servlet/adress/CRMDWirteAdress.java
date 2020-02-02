package com.servlet.adress;

import com.customer.Customer;
import com.goods.cart.Cart;
import com.order.Order;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

@Controller
@RequestMapping("/buy")
public class CRMDWirteAdress {
    @Autowired
    private OrderService orderService;

    //直接通过超链接进入收货地址填写
    @RequestMapping("/getAdress")
    public String getAdress(){
        return "home/wirteAddress/WirteAddress";
    }


    @RequestMapping("/addAdress")
    public String addAdress(HttpServletRequest req,String consignee,String customerPhone){
        //取出存在会话中的用户账号
        Customer customer = (Customer) req.getSession().getAttribute("customer");
        String account = customer.getAccount();
        //将用户编写的地址合并
        String orderAdress = req.getParameter("province")
                    + req.getParameter("city")
                    + req.getParameter("address");
        //生成订单号
        String ordersId = UUID.randomUUID().toString();
        //取出存在会话中的购物车信息
        Cart cart = (Cart) req.getSession().getAttribute("cart");

        Order order = new Order();
        order.setOrdersId(ordersId);
        order.setAccount(account);
        order.setConsignee(consignee);
        order.setCustomerPhone(customerPhone);
        order.setOrderAdress(orderAdress);
        return "";
    }

}
