package com.order;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class Order {
    private String ordersId;//订单编号
    private int goodsId;//商品编号
    private String account;//账号
    private String consignee;//收件人
    private String orderAdress;//收货地址
    private String customerPhone;//收货人号码
    private int orderState;//订单状态
    private int num;//总数量
    private BigDecimal total;//合计
    private Date theTime;//当前时间

    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
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

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public Date getTheTime() {
        return theTime;
    }

    public void setTheTime(Date theTime) {
        this.theTime = theTime;
    }
}
