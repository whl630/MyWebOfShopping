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

    public int getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(int operatorId) {
        this.operatorId = operatorId;
    }

    public String getOperatorUsername() {
        return operatorUsername;
    }

    public void setOperatorUsername(String operatorUsername) {
        this.operatorUsername = operatorUsername;
    }

    public String getOperatorAccount() {
        return operatorAccount;
    }

    public void setOperatorAccount(String operatorAccount) {
        this.operatorAccount = operatorAccount;
    }

    public String getOperatorPassword() {
        return operatorPassword;
    }

    public void setOperatorPassword(String operatorPassword) {
        this.operatorPassword = operatorPassword;
    }

    public Date getOperatorTime() {
        return operatorTime;
    }

    public void setOperatorTime(Date operatorTime) {
        this.operatorTime = operatorTime;
    }

    public String getOperatorPicture() {
        return operatorPicture;
    }

    public void setOperatorPicture(String operatorPicture) {
        this.operatorPicture = operatorPicture;
    }

    public int getOperatorTypeId() {
        return operatorTypeId;
    }

    public void setOperatorTypeId(int operatorTypeId) {
        this.operatorTypeId = operatorTypeId;
    }
}
