package com.goods.cart;

import com.goods.Good;

import java.text.DecimalFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer,CartItem> items = new HashMap<>();

    public void add(Good good,int count){
        CartItem item = items.get(good.getGoodsId());
        if (item == null){
            items.put(good.getGoodsId(),new CartItem(good,count));
        }else {
            item.setCount(item.getCount()+count);
        }
    }

    public void remove(Integer goodsId){
        items.remove(goodsId);
    }

    public void clear(){
        items.clear();
    }


    public Collection<CartItem> getAll() {
        return items.values();
    }

    public int getCount() {
        int num= 0;
        for (CartItem item : items.values()) {
            num += item.getCount();
        }
        return num;
    }

    public double getTotalPrice() {
        return 30.5;
    }
    public boolean isNothing() {
        return items.isEmpty();
    }
}
