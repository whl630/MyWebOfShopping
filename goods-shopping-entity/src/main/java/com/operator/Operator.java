package com.operator;

import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
import java.util.Date;

@Data
public class Operator {
    private int operatorId;
    @NotNull
    private String operatorUsername;
    @Size(min = 3,max = 10,message = "账号名不能长度只能在3~10之间！")
    private String operatorAccount;
    @Size(min = 3,max = 8,message = "密码长度有误！")
    private String operatorPassword;
    @Past
    private Date operatorTime;
    @NotNull
    private String operatorPicture;
    private  int operatorTypeId;
}
