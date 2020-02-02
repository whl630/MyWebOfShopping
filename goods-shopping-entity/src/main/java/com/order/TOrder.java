package com.order;

import com.goods.Good;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class TOrder {
    private String ordersId;//订单编号
    private String account;//账号
    private String consignee;//收件人
    private String orderAdress;//收货地址
    private String customerPhone;//收货人号码
    private int orderState;//订单状态
    private Map<Good, Integer> orderDetail = new HashMap<>();
    private Date theTime;//当前时间

    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getOrderAdress() {
        return orderAdress;
    }

    public void setOrderAdress(String orderAdress) {
        this.orderAdress = orderAdress;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getOrderState() {
        switch (this.orderState) {
            case 0:
                return "只添加到了购物车";
            case 1:
                return "未支付";
            case 2:
                return "已支付";
            case 3:
                return "已发货";
            case 4:
                return "已签收";
            default:
                return "出现状况";
        }
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public Map<Good, Integer> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(Map<Good, Integer> orderDetail) {
        this.orderDetail = orderDetail;
    }

    public Date getTheTime() {
        return theTime;
    }

    public void setTheTime(Date theTime) {
        this.theTime = theTime;
    }
}
