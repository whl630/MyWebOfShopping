package com.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

public class getUUID {
    public static void main(String[] args) {
        //生成订单号
            //注意replaceAll前面的是正则表达式
            String uuid = UUID.randomUUID().toString();
            System.out.println(uuid);
    }
}
