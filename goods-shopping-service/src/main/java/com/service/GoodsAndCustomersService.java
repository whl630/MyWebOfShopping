package com.service;

import com.goods.Good;
import com.goods.GoodType;

import java.util.List;

public interface GoodsAndCustomersService {
    List<Good> getAllGoods(int pagaNum,int pageSize);
    List<GoodType> getAllGoodsType(int pagaNum,int pageSize);
    List<GoodType> getGoodsType();
    List<Good> getSomeGoods(String goodsName);
    int addGood(Good good);
    Good getAGood(int goodsId);
    int updateGood(Good good);
    int deleteGood(int goodsId);
    List<Good> getSomeGoodsByCategoryId(int categoryId);
}
