<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
<div>
    <h1>商品信息</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${root}/insert"><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"></i></a>
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
            <tr>
                <td><input type="checkbox" id="checkbox"></td>
                <td>${g.count}</td>
                <td>${goods.goodsName}</td>
                <td>${goods.goodsPrice}</td>
                <td>${goods.disPrice}</td>
                <td>${goods.intotal}</td>
                <td>${goods.categoryId}</td>
                <td>${goods.imgurl}</td>
                <td>
                    <a href="${root}/delete?id=${goods.goodsId}"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="${root}/update?id=${goods.goodsId}"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div id="page">
        <a href="${root}/listGoods?pageNum=1&pageSize=${good.pageSize}" id="id">首页</a>
        <a href="${root}/listGoods?pageNum=${good.prePage}&pageSize=${good.pageSize}">上一页</a>
        <c:forEach items="${good.navigatepageNums}" var="num">
            <a href="${root}/listGoods?pageNum=${num}&pageSize=${good.pageSize}">${num}</a>
        </c:forEach>
        <a href="${root}/listGoods?pageNum=${good.nextPage}&pageSize=${good.pageSize}">下一页</a>
        <a href="${root}/listGoods?pageNum=${good.pages}&pageSize=${good.pageSize}">尾页</a><span>&nbsp;&nbsp;共${good.pages}页</span>
    </div>
</div>
</body>
</html>
