package com.customer;

import lombok.Data;

@Data
public class Customer {
    private int aid;//顾客编号
    private String account;//账号
    private String password;//密码
    private String name;//顾客姓名
    private String number;//顾客电话
    private String adress;//顾客地址
    private int member;//是否会员
}
