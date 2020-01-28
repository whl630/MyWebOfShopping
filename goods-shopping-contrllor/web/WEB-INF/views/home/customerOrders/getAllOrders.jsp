<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
<link rel="stylesheet" type="text/css" href="/static/css/globle.css">
<script src="/static/js/jquery.js"></script>
    <table class="table table-hover table-striped table-bordered table-condensed">
        <tr>
            <th>名称</th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>商品操作</th>
            <th>合计</th>
            <th>交易状态</th>
            <th>交易操作</th>
        </tr>
        <c:forEach items="${orders}" var="order">
            <tr>
                <td>${order.num}</td>
                <td data-id="${order.goodsId}" class="td">
<%--                    <img src="/static/goodsphotoes/${goodToOrder.imgurl}" style="width: 60px;height: 80px">--%>
                    <button type="button" class="layui-btn layui-btn-danger">查看详情</button>
                </td>
                <td>${order.orderState}</td>
                <td>${order.num}</td>
                <c:if test="${order.orderState == 1}">
                    <td>
                        还未支付<br/>
                        <a href="#" style="color: red">立即支付</a><br/>
                        <a href="#" style="color: red">取消订单</a><br/>
                    </td>
                </c:if>
                <c:if test="${order.orderState == 2}">
                    <td>
                        交易成功<br/>
                        <a href="#" style="color: red">订单详情</a><br/>
                        买家以付款
                    </td>
                </c:if>
                <c:if test="${order.orderState == 3}">
                    <td>
                        买家操作结束<br/>
                        <a href="#" style="color: red">订单详情</a><br/>
                        卖家已发货
                    </td>
                </c:if>
                <c:if test="${order.orderState == 4}">
                    <td>
                        交易成功<br/>
                        <a href="#" style="color: red">订单详情</a><br/>
                        查看物流
                    </td>
                </c:if>
                <td style="font-size: 22px">￥ ${order.total}</td>

                <c:if test="${order.orderState == 1}"><td style="font-size: 22px;color: red;font-family: 华文新魏">未支付</td></c:if>
                <c:if test="${order.orderState == 2}"><td style="font-size: 22px;color: green;font-family: 华文新魏">已支付</td></c:if>
                <c:if test="${order.orderState == 3}"><td style="font-size: 22px;color: darkmagenta;font-family: 华文新魏">在路上</td></c:if>
                <c:if test="${order.orderState == 4}"><td style="font-size: 22px;color: blue;font-family: 华文新魏">已到货</td></c:if>



                <c:if test="${order.orderState == 1}">
                    <td><button type="button" class="layui-btn layui-btn-danger">一键支付</button></td>
                </c:if>
                <c:if test="${order.orderState == 2}">
                    <td><button type="button" class="layui-btn layui-btn-danger">提醒发货</button></td>
                </c:if>
                <c:if test="${order.orderState == 3}">
                    <td><button type="button" class="layui-btn layui-btn-danger">确认收货</button></td>
                </c:if>
                <c:if test="${order.orderState == 4}">
                    <td><button type="button" class="layui-btn layui-btn-danger">商品评价</button></td>
                </c:if>
            </tr>
        </c:forEach>
    </table>

    <script>

        $(function () {
            getGood();
        })

        function getGood() {
            $.ajax({
                method:"GET",
                url:"/orders/getGoodByGoodsIdToOrderPage",
                data:{
                    goodsId:$(this).closest("td").attr("data-id")
                }
            })
        }
    </script>
