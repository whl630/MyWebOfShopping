package com.goods;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Good {
    private Integer goodsId;//商品编号
    private String goodsName;//商品名
    private BigDecimal goodsPrice;//商品原价
    private BigDecimal disPrice;//商品会员价
    private int intotal;//商品库存数量
    private int categoryId;//商品类型编号
    private String imgurl;//商品图片地址

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public BigDecimal getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(BigDecimal goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public BigDecimal getDisPrice() {
        return disPrice;
    }

    public void setDisPrice(BigDecimal disPrice) {
        this.disPrice = disPrice;
    }

    public int getIntotal() {
        return intotal;
    }

    public void setIntotal(int intotal) {
        this.intotal = intotal;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
}
