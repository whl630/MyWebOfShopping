<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table class="table table-condensed table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>选择</th>
        <th>商品编号</th>
        <th>商品保质期</th>
        <th>已售数量</th>
        <th>商品产地</th>
        <th>商品描述</th>
        <th>商品编号</th>
        <th>生产日期</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="tbody">
    <c:forEach items="${details.list}" var="details">
        <tr data-id="${details.detailsId}">
            <td><input type="checkbox" id="checkbox"></td>
            <td>${details.detailsId}</td>
            <td>${details.detailsShelf}</td>
            <td>${details.detailsQuintity}</td>
            <td>${details.detailsOrigin}</td>
            <td><textarea style="height: 30px;width: 320px">${details.detailsDes}</textarea></td>
            <td>${details.goodsId}</td>
            <td>${details.detailsTime}</td>
            <td>
                <button type="button" class="layui-btn layui-btn-danger layui-btn-radius" id="del">删除</button>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${root}/back/updateDetails?detailsId=${details.detailsId}" class="update"><button type="button" class="layui-btn layui-btn-warm layui-btn-radius">修改</button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="page">
    <button value="1" class="my_de" id="id">首页</button>
    <button value="${details.prePage}" class="my_de">上一页</button>
    <c:forEach items="${details.navigatepageNums}" var="num">
        <button value="${num}" class="my_de">${num}</button>
    </c:forEach>
    <button value="${details.nextPage}" class="my_de">下一页</button>
    <button value="${details.pages}" class="my_de">尾页</button><span>&nbsp;&nbsp;共${details.pages}页</span>
</div>

<script>
    function loadTables() {
        $.ajax({
            method: "GET",
            url: "${root}/back/getAllGoodsDetails",
            data: {
                pageNum:$(this).val()
            }
        }).done(function (res) {
            $("#listDiv").html(res);
        })
    }
    //删除
    function toDelete(){
        if (window.confirm("是否确定删除？")){
            $.ajax({
                method:"GET",
                url:"${root}/back/deleteGoodDetails",
                data:{
                    detailsId:$(this).closest("tr").attr("data-id")
                }
            }).done(function (res) {
                alert(res)
                loadTables();
            }).success(function (res) {
                alert(res);
            }).fail(function (res) {
                alert(res);
            })
        }
    }
    $(function() {
        $("#page").on("click",".my_de",loadTables);
        $("table").on("click","#del",toDelete);
    })
</script>
