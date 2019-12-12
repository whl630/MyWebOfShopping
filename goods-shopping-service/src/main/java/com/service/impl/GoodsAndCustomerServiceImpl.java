package com.service.impl;

import com.dao.GoodsDao;
import com.goods.Good;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodsAndCustomerServiceImpl implements GoodsAndCustomersService {
    @Autowired
    private GoodsDao goodsDao;
    @Override
    public List<Good> getAllGoods(int pagaNum, int pageSize) {
        return goodsDao.getAllGoods(pagaNum,pageSize);
    }

    @Override
    public List<GoodType> getAllGoodsType(int pagaNum, int pageSize) {
        return goodsDao.getAllGoodsTypes(pagaNum,pageSize);
    }

    @Override
    public List<GoodType> getGoodsType() {
        return goodsDao.getAllGoodsType();
    }

    @Override
    public List<Good> getSomeGoods(String goodsName) {
        return goodsDao.getSomeGoods(goodsName);
    }


    @Override
    public int addGood(Good good) {
        return goodsDao.addGood(good);
    }

    @Override
    public Good getAGood(int goodsId) {
        return goodsDao.getAGood(goodsId);
    }

    @Override
    public int updateGood(Good good) {
        return goodsDao.updateGood(good);
    }

    @Override
    public int deleteGood(int goodsId) {
        return goodsDao.deleteGood(goodsId);
    }

    @Override
    public List<Good> getSomeGoodsByCategoryId(int categoryId) {
        return goodsDao.getSomeGoodsByCategoryId(categoryId);
    }
}
