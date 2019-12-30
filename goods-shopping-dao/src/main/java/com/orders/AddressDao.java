package com.orders;

import com.order.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressDao {
    List<Address> getAllAddress(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

}
