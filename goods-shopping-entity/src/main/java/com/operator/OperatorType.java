package com.operator;

import lombok.Data;


public class OperatorType {
    private int oTypeId;
    private String oTypeName;

    public int getoTypeId() {
        return oTypeId;
    }

    public void setoTypeId(int oTypeId) {
        this.oTypeId = oTypeId;
    }

    public String getoTypeName() {
        return oTypeName;
    }

    public void setoTypeName(String oTypeName) {
        this.oTypeName = oTypeName;
    }

    @Override
    public String toString() {
        return "OperatorType{" +
                "oTypeId=" + oTypeId +
                ", oTypeName='" + oTypeName + '\'' +
                '}';
    }
}
