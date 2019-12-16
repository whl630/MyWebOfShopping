<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>商品类型界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
<div>
    <h1>商品类型数据</h1><a id="insert" href="${root}/insertType"><i class="fa fa-plus-square-o fa-4x" aria-hidden="true"></i></a>
    <table class="table table-condensed table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>编号</th>
            <th>商品类型</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${type.list}"  var="type">
            <tr>
                <td>${type.categoryId}</td>
                <td>${type.category}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

      <div id="page">
         <a href="${root}/getGoodsType?pageNum=1&pageSize=${type.pageSize}" id="id">首页</a>
         <a href="${root}/getGoodsType?pageNum=${type.prePage}&pageSize=${type.pageSize}">上一页</a>
         <c:forEach items="${type.navigatepageNums}" var="num">
             <a href="${root}/getGoodsType?pageNum=${num}&pageSize=${type.pageSize}">${num}</a>
         </c:forEach>
         <a href="${root}/getGoodsType?pageNum=${type.nextPage}&pageSize=${type.pageSize}">下一页</a>
         <a href="${root}/getGoodsType?pageNum=${type.pages}&pageSize=${type.pageSize}">尾页</a>
      </div>
</div>
</body>
</html>
