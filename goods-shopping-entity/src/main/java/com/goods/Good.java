package com.goods;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class Good {
    private Integer goodsId;//商品编号
    @Size(min = 2,max = 18)
    private String goodsName;//商品名
    @NotNull
    private double goodsPrice;//商品原价
    @NotNull
    private double disPrice;//商品会员价
    @NotNull
    private int intotal;//商品库存数量
    @NotNull
    private int categoryId;//商品类型编号
    @NotNull
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

    public double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public double getDisPrice() {
        return disPrice;
    }

    public void setDisPrice(double disPrice) {
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
