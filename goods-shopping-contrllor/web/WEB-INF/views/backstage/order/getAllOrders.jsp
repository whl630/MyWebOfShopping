<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table class="table table-condensed table-striped table-hover">
    <tr>
        <th>选择</th>
        <th>订单编号</th>
        <th>商品编号</th>
        <th>账号</th>
        <th>收件人</th>
        <th>收货地址</th>
        <th>收货人号码</th>
        <th>订单状态</th>
        <th>数量</th>
        <th>合计</th>
        <th>当前时间</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${order.list}" var="order">
        <tr>
            <td><input type="checkbox" style="width: 24px;height: 24px"></td>
            <td>${order.ordersId}</td>
            <td><a href="/order/getGoods?goodsId=${order.goodsId}" style="color: red">${order.goodsId}</a></td>
            <td>${order.account}</td>
            <td>${order.consignee}</td>
            <td>${order.orderAdress}</td>
            <td>${order.customerPhone}</td>
            <c:if test="${order.orderState == 1}">
                <td><span style="color: red;font-size: 19px">未付款</span></td>
            </c:if>
            <c:if test="${order.orderState == 2}">
                <td><span style="color: green;font-size: 19px">已付款</span></td>
            </c:if>
            <c:if test="${order.orderState  == 3}">
                <td><span style="color: yellow;font-size: 19px">未签收</span></td>
            </c:if>
            <c:if test="${order.orderState  == 4}">
                <td><span style="color: blue;font-size: 19px">已签收</span></td>
            </c:if>
            <td>${order.num}</td>
            <td>${order.total}</td>
            <td>${order.theTime}</td>
            <td><a id="delOrder"><button type="button" class="layui-btn layui-btn-danger"><i class="layui-icon"></i></button></a></td>
        </tr>
    </c:forEach>
</table>
