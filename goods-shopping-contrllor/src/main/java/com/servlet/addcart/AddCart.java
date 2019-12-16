package com.servlet.addcart;

import com.goods.Good;
import com.goods.cart.Cart;
import com.service.GoodsAndCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/shopping")
public class AddCart {
    @Autowired
    private GoodsAndCustomersService goodsAndCustomersService;
    @RequestMapping("/addCart")
    public String getGoodsAddCart(int goodsId, HttpServletRequest req){
        //将此ID的商品添加到购物车。
        HttpSession session = req.getSession();
        //更新保存在cart中的值
        Good good = goodsAndCustomersService.getAGood(goodsId);
        //获取session 中保存的购物车
        Cart cart = (Cart) session.getAttribute("cart");
        //判断购物车是不是为空，为空就创建一个购物车，
        if (cart == null) {
            cart = new Cart();
        }
        cart.add(good,1);
        session.setAttribute("cart",cart);
        return "添加";
    }
    @RequestMapping("/cartInfo")
    public String getGoodsAddCart(){
        return "home/shoppingCart/myShoppingCart";
    }
}
