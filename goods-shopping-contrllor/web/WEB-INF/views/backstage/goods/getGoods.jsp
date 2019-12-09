<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table class="table table-condensed table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>选择</th>
        <th>序号</th>
        <th>商品名称</th>
        <th>商品价格</th>
        <th>会员价格</th>
        <th>库存数量</th>
        <th>类型编号</th>
        <th>图片地址</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${good.list}" var="goods" varStatus="g">
        <tr data-id="${goods.goodsId}">
            <td><input type="checkbox" id="checkbox"></td>
            <td>${g.count}</td>
            <td>${goods.goodsName}</td>
            <td>${goods.goodsPrice}</td>
            <td>${goods.disPrice}</td>
            <td>${goods.intotal}</td>
            <td>${goods.categoryId}</td>
            <td><img src="static/goodsphotoes/${goods.imgurl}" width="40px" height="40px"></td>
            <td>
                <a href="#" class="del"><i class="fa fa-trash fa-2x" aria-hidden="true" id="delete"></i></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#" class="update"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="page">
    <a href="${root}/listGoods?pageNum=1" id="id">首页</a>
    <a href="${root}/listGoods?pageNum=${good.prePage}">上一页</a>
    <c:forEach items="${good.navigatepageNums}" var="num">
        <a href="${root}/listGoods?pageNum=${num}">${num}</a>
    </c:forEach>
    <a href="${root}/listGoods?pageNum=${good.nextPage}">下一页</a>
    <a href="${root}/listGoods?pageNum=${good.pages}">尾页</a><span>&nbsp;&nbsp;共${good.pages}页</span>
</div>

