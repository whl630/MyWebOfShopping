package com.service;

import com.goods.GoodsDetails;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsDetailsService {
    //查询所有的商品详情表数据使用到了分页
    List<GoodsDetails> getAllBePageToGoodsDetails(int pageNum,int pageSize);
    //添加商品详情
    int insertGoodsDetails(GoodsDetails goodsDetails);
    //通过goodsId查询一条商品详情信息
    GoodsDetails getAGoodsDetailsByGoodsId(int goodsId);
    //通过detailsId查询一条商品详情信息
    GoodsDetails getAGoodsDetailsByDetailsId(int detailsId);
    //删除一条商品详情数据
    int deleteGoodDetails(int detailsId);
    //修改数据
    int updtaeGoodDetails(GoodsDetails goodsDetails);
}
