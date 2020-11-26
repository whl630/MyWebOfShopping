<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .cart-tb {
        width: 600px;
    }

    .summary {
        padding-left: 15px;
    }
</style>

<c:if test="${cart == null || cart.nothing}">
    <p style="color: green;font-size: 21px">抱歉，你的购物车还是空的哦，请返回首页进行购买！</p>
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

        <c:forEach var="item" varStatus="s" items="${cart.all}">
            <tr data-id="${item.good.goodsId}">
                <td>${s.count}</td>
                <td>${item.good.goodsName}</td>
                <td>${item.good.goodsPrice}</td>
                <td>${item.good.disPrice}</td>
                <td>${item.count}</td>
                <td><a href="#"  class="delGood">删除</a></td>
            </tr>
        </c:forEach>

    </table>

    <div class="summary">
        <span>当前总共购买 ${cart.count} 件商品，总价 ${cart.totalPrice} 元。</span><br />
        <a href="/buy/getAdress" id="getIntotal">进行结算</a>
        <a href="#" id="deleteCart">清空购物车</a>
    </div>
</c:if>
<script>
    $(function () {
        //清空购物车
        $(document).on("click","#deleteCart",deleteCart);
        //删除购物车中的商品
        $(document).on("click",".delGood",delGood);
    })
    function deleteCart() {
            $.ajax({
                method:"GET",
                url:"/shopping/delGood",
                data:{
                    goodsId:-1
                }
            }).done(function () {
                alert($(this).closest("tr").attr("data-id"))
                window.location.reload();
                loadCart();
            })
    }
    function delGood() {
        $.ajax({
            method: "GET",
            url: "/shopping/delGood",
            data:{
                goodsId:$(this).closest("tr").attr("data-id")
            }
        }).done(function () {
            alert($(this).closest("tr").attr("data-id"))
            window.location.reload();
            loadCart();
        })
    }
</script>


