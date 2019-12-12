<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${cart == null || cart.nothing}">
    购物车空空如也！
</c:if>
<c:if test="${cart != null && not cart.nothing}">
    <table  class="cart-tb">
        <caption style="font-size: 24px;font-weight: bold;margin-bottom: 20px">我的购物车</caption>
        <tr>
            <th>商品序号</th>
            <th>商品名称</th>
            <th>商品价格</th>
            <th>会员价格</th>
            <th>商品数量</th>
            <th>操作</th>
        </tr>
        <c:forEach items="item" varStatus="s" var="${cart.list}">
            <tr>
                <td>${s.count}</td>
                <td>${item.good.goodsName}</td>
                <td>${item.good.goodPrice}</td>
                <td>${item.good.disPrice}</td>
                <td>${item.count}</td>
                <td><a href="#">删除</a></td>
            </tr>
        </c:forEach>
    </table>

    <div class="summary">
        <span>当前总共购买 ${cart.count} 件商品，总价 ${cart.totalPrice} 元。</span><br />
        <a href="#">进行结算</a>
        <a href="#">清空购物车</a>
    </div>
</c:if>


