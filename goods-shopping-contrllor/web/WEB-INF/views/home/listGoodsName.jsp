<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<c:forEach items="${name}" var="good">--%>
<%--    <ul>--%>
<%--        <li>${good.goodsName}</li>--%>
<%--    </ul>--%>
<%--</c:forEach>--%>
<c:if test="${cart == null || cart.nothing}">
    抱歉，你的购物车还是空的哦，请返回首页进行购买！
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
        <c:forEach items="item" varStatus="s" var="${cart.all}">
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
</c:if>
