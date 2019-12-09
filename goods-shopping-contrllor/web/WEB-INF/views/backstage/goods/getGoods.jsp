<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/9
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <tr data-id="${phone.id}">
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
