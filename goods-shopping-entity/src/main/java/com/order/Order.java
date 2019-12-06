package com.order;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class Order {
    private String ordersId;//订单编号
    private int goodsId;//商品编号
    private String Account;//账号
    private String Consignee;//收件人
    private String orderAdress;//收货地址
    private int num;//总数量
    private BigDecimal total;//合计
    private Date theTime;//当前时间
}
