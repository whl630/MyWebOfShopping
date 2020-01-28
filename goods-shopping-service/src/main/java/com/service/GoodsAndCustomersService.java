package com.service;

import com.goods.Good;
import com.goods.GoodType;

import java.util.List;

public interface GoodsAndCustomersService {
    //查询所有商品
    List<Good> getAllGoods(int pagaNum,int pageSize);
    //查询所有商品类型并分页
    List<GoodType> getAllGoodsType(int pagaNum,int pageSize);
    //查询所有商品类型不分页
    List<GoodType> getGoodsType();
    //通过商品名进行模糊查询
    List<Good> getSomeGoods(String goodsName);
    //添加商品
    int addGood(Good good);
    //查询一条记录
    Good getAGood(int goodsId);
    //修改商品
    int updateGood(Good good);
    //删除商品
    int deleteGood(int goodsId);
    //通过类型编号查询商品
    List<Good> getSomeGoodsByCategoryId(int categoryId);
    //添加商品类型
    int insertGoodsType(GoodType goodType);

    //通过商品编号查询商品图片等信息
}
