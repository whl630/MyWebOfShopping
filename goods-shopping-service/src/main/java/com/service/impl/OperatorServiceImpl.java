package com.service.impl;

import com.operator.Operator;
import com.operator.OperatorDao;
import com.operator.OperatorType;
import com.service.OperatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OperatorServiceImpl implements OperatorService {
    @Autowired(required = true)
    private OperatorDao operatorDao;
    @Override
    public List<Operator> getAllOperators() {
        return operatorDao.getAllOperators();
    }

    @Override
    public Operator getAnOperatorByAccount(String operatorAccount, String operatorPassword) {
        return operatorDao.getAnOperatorByAccount(operatorAccount,operatorPassword);
    }

    @Override
    public int updateOperatorByOperatorTypeId(int operatorTypeId) {
        return operatorDao.updateOperatorByOperatorTypeId(operatorTypeId);
    }

    @Override
    public List<OperatorType> getAllOperatorTypes() {
        return operatorDao.getAllOperatorTypes();
    }

    @Override
    public Operator getAOperator(int operatorId) {
        return operatorDao.getAOperator(operatorId);
    }
}
