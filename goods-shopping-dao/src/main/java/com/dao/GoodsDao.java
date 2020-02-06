package com.dao;

import com.goods.Good;
import com.goods.GoodType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsDao {
    List<Good> getAllGoods(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    Good getAGood(int id);
    Good getGoodByName(String goodsName);
    int addGood(Good good);
    int updateGood(Good good);
    int deleteGood(int id);
    List<Good> getSomeGoodsByCategoryId(int categoryId);
    List<Good> getSomeGoods(@Param("goodsName") String goodsName);


    List<GoodType> getAllGoodsTypes(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    List<GoodType> getAllGoodsType();
    int addGoodType(GoodType goodType);
}
