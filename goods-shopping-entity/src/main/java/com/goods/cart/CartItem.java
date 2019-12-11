package com.goods.cart;

import com.goods.Good;

public class CartItem {
    private Good good;
    private int count;

    public CartItem() {
    }

    public CartItem(Good good, int count) {
        this.good = good;
        this.count = count;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
