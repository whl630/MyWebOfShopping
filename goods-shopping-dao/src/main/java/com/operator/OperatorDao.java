package com.operator;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OperatorDao {
    //查询所有管理员
    List<Operator> getAllOperators();
    //管理员登录验证
    Operator getAnOperatorByAccount(@Param("operatorAccount") String operatorAccount, @Param("operatorPassword") String operatorPassword);

    int updateOperatorByOperatorTypeId(@Param("operatorTypeId") int operatorTypeId,@Param("operatorId")int operatorId);

    List<OperatorType> getAllOperatorTypes();

    Operator getAOperator(int operatorId);
}
