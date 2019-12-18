package com.service;

import com.operator.Operator;
import com.operator.OperatorType;

import java.util.List;

public interface OperatorService {
    //查询所有管理员
    List<Operator> getAllOperators();
    //管理员登录验证
    Operator getAnOperatorByAccount(String operatorAccount,String operatorPassword);

    int updateOperatorByOperatorTypeId(int operatorTypeId);
    //获取所有管理员类型
    List<OperatorType> getAllOperatorTypes();
    //查询一条管理员数据
    Operator getAOperator(int operatorId);
}
