<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/static/css/myCart.css">
    <c:forEach items="${goods.list}" var="good">
        <div class="goods">
        <span>${good.goodsName}</span><br/>
        <img src="static/goodsphotoes/${good.imgurl}"><br/>
        原价：<b>￥${good.goodsPrice}</b>&nbsp;&nbsp;会员价：<b>￥${good.disPrice}</b><br/>
        <a >查看详情</a>
        <a href="${root}/addCart?goodsId=${good.goodsId}" class="prod_good" data-id="${good.goodsId}">添加到购物车</a>
        </div>
    </c:forEach>

<div id="page">
    <button value="1" class="my_li" id="id">首页</button>
    <button value="${goods.prePage}" class="my_li">上一页</button>
    <c:forEach items="${goods.navigatepageNums}" var="num">
        <button value="${num}" class="my_li">${num}</button>
    </c:forEach>
    <button value="${goods.nextPage}" class="my_li">下一页</button>
    <button value="${goods.pages}" class="my_li">尾页</button><span>&nbsp;&nbsp;共${goods.pages}页</span>
</div>

<script>
    function loadTables() {
        $.ajax({
            method: "GET",
            url: "${root}/getGoods",
            data: {
                pageNum:$(this).val()
            }
        }).done(function (res) {
            $("#fourDiv").html(res);
        })
    }
    $(function () {
        $("#page").on("click",".my_li",loadTables);
        //购物车动画
        $(".prod_good").click(function () {
            $(".goods").animate_from_to("#cart")
        });
    })
    <%--function addCart() {--%>
    <%--    $.ajax({--%>
    <%--        method: "GET",--%>
    <%--        url:"${root}/addCart",--%>
    <%--        data: {--%>
    <%--            goodsId: $(this).closest("tr").attr("data-id")--%>
    <%--        }--%>
    <%--    }).success(function () {--%>
    <%--        alert("已添加到购物车！")--%>
    <%--    })--%>
    <%--}--%>
</script>
