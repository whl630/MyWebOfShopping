package com.order;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Address {
    private int addressId;
    private String addressName;
    private String addressNumber;
    private String addressHome;

    public Address(int addressId, String addressName, String addressNumber, String addressHome) {
        this.addressId = addressId;
        this.addressName = addressName;
        this.addressNumber = addressNumber;
        this.addressHome = addressHome;
    }
}
