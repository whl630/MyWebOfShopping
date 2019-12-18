package com.service.impl;

import com.dao.GoodDetailsDao;
import com.goods.GoodsDetails;
import com.service.GoodsDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsDetailsServiceImpl implements GoodsDetailsService {
    @Autowired
    private GoodDetailsDao goodDetailsDao;

    @Override
    public List<GoodsDetails> getAllBePageToGoodsDetails(int pageNum, int pageSize) {
        return goodDetailsDao.getAllBePageToGoodsDetails(pageNum,pageSize);
    }

    @Override
    public int insertGoodsDetails(GoodsDetails goodsDetails) {
        return goodDetailsDao.insertGoodsDetails(goodsDetails);
    }

    @Override
    public GoodsDetails getAGoodsDetailsByGoodsId(int goodsId) {
        return goodDetailsDao.getAGoodsDetailsByGoodsId(goodsId);
    }

    @Override
    public GoodsDetails getAGoodsDetailsByDetailsId(int detailsId) {
        return goodDetailsDao.getAGoodsDetailsByDetailsId(detailsId);
    }

    @Override
    public int deleteGoodDetails(int detailsId) {
        return goodDetailsDao.deleteGoodDetails(detailsId);
    }

    @Override
    public int updtaeGoodDetails(GoodsDetails goodsDetails) {
        return goodDetailsDao.updtaeGoodDetails(goodsDetails);
    }
}
