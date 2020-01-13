package com.operator;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OperatorDao {
    //查询所有管理员
    List<Operator> getAllOperators();
    //管理员登录验证
    Operator getAnOperatorByAccount(@Param("operatorAccount") String operatorAccount, @Param("operatorPassword") String operatorPassword);
    //通过管理员编号修改管理员
    int updateOperatorByOperatorTypeId(@Param("operatorTypeId") int operatorTypeId,@Param("operatorId")int operatorId);
    //遍历所有管理员类型
    List<OperatorType> getAllOperatorTypes();
    //获取一个管理员信息
    Operator getAOperator(int operatorId);
    //添加管理员(设置该功能，是因为管理员只能是通过内部添加)
    int insertOperator(Operator operator);
}
