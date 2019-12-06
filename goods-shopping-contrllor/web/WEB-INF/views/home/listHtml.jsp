<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <c:forEach items="${goods.list}" var="good">
        <div class="goods">
        <span>${good.goodsName}</span><br/>
        <img src="static/goodsphotoes/${good.imgurl}"><br/>
        原价：<b>￥ ${good.goodsPrice}</b>&nbsp;&nbsp;会员价：<b>￥ ${good.disPrice}</b><br/>
        <a href="#">查看详情</a>
        <a href="#">添加到购物车</a>
        </div>
    </c:forEach>

<div id="page">
    <a href="${root}/getGoods?pageNum=1" id="id">首页</a>
    <a href="${root}/getGoods?pageNum=${goods.prePage}">上一页</a>
    <c:forEach items="${goods.navigatepageNums}" var="num">
        <a href="${root}/getGoods?pageNum=${num}">${num}</a>
    </c:forEach>
    <a href="${root}/getGoods?pageNum=${goods.nextPage}">下一页</a>
    <a href="${root}/getGoods?pageNum=${goods.pages}">尾页</a><span>&nbsp;&nbsp;共${goods.pages}页</span>
</div>
