package com.goods;

import javafx.scene.input.DataFormat;
import lombok.Data;

@Data
public class GoodsDetails {
    private int detailsId;//商品信息编号
    private String detailsShelf;//商品保质期
    private int detailsQuintity;//商品已售数量
    private String detailsOrigin;//商品产地
    private String detailsDes;//商品描述
    private int goodsId;//商品编号
    private DataFormat detailsTime;//商品生产日期
}
