package com;

import com.dao.GoodsDao;
import com.goods.Good;
import com.goods.GoodType;
import com.service.GoodsAndCustomersService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author cj
 * @date 2019/11/21
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:service-spring.xml")
public class GoodsServiceTest {

    @Autowired
    private GoodsAndCustomersService service;
    @Test
    public void getAll() {

       List<GoodType> employeeEntities =  service.getAllGoodsType(1, 4);
        for (GoodType employeeEntity : employeeEntities) {
            System.out.println("-----debug: employeeEntity = " + employeeEntity);
        }
    }
    @Test
    public void getAll2() {
    List<Good> employeeEntities =  service.getAllGoods(1, 4);
        for (Good good : employeeEntities) {
            System.out.println("-----debug: employeeEntity = " + good);
        }
    }
    @Test
    public void getsomeGoods() {
        List<Good> employeeEntities =  service.getSomeGoodsByCategoryId(3);
        for (Good good : employeeEntities) {
            System.out.println("-----debug: employeeEntity = " + good.getGoodsName());
        }
    }
    @Test
    public void insert() {
        Good good = new Good();
        int num = service.addGood(good);
        if (num > 0){
            System.out.println("添加成功！");
        }
    }
    @Test
    public void delete() {

        int num = service.deleteGood(66);
        if (num > 0){
            System.out.println("删除成功！");
        }
    }
    @Test
    public void getSomeGoods() {

        List<Good> goods = service.getSomeGoods("h");
        for (Good good : goods) {
            System.out.println(good);
        }
    }
}