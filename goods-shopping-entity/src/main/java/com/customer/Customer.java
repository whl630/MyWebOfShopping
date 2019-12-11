package com.customer;

import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class Customer {
    private Integer aid;//顾客编号
    @Size(min = 3,max = 8,message = "账号名长度设置有误，只能是在3~8之间！")
    private String account;//账号
    @Size(min = 2,max = 12,message = "账号密码长度设置有误，只能是在2~12之间！")
    private String password;//密码
    @NotNull
    private String fname;//昵称
    @Max(8)
    private String name;//顾客姓名
    @NotNull
    private String number;//顾客电话
    @NotNull
    private String adress;//顾客地址
//    private Integer member;//是否会员

    public Customer(@Size(min = 3, max = 8, message = "账号名长度设置有误，只能是在3~8之间！") String account, @Size(min = 2, max = 12, message = "账号密码长度设置有误，只能是在2~12之间！") String password, @NotNull String fname, @Max(8) String name, @NotNull String number, @NotNull String adress) {
        this.account = account;
        this.password = password;
        this.fname = fname;
        this.name = name;
        this.number = number;
        this.adress = adress;
    }

}
