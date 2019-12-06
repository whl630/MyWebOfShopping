package com.goods;

import lombok.Data;

@Data
public class GoodsDetails {
    private int detailsId;//商品信息编号
    private String detailsName;//商品名称
    private int detailsQuintity;//商品已售数量
    private String detailsOrigin;//商品产地
    private String detailsDes;//商品描述
    private int goodsId;//商品编号
}
