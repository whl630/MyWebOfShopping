<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table class="table table-condensed table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>选择</th>
        <th>用户编号</th>
        <th>用户账号</th>
        <th>用户密码</th>
        <th>用户昵称</th>
        <th>用户名</th>
        <th>用户号码</th>
        <th>用户地址</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="tbody">
    <c:forEach items="${customers.list}" var="customers">
        <tr data-id="${customers.aid}">
            <td><input type="checkbox" id="checkbox" style="width: 25px;height: 25px"></td>
            <td>${customers.aid}</td>
            <td>${customers.account}</td>
            <td>${customers.password}</td>
            <td>${customers.fname}</td>
            <td>${customers.name}</td>
            <td>${customers.number}</td>
            <td>${customers.adress}</td>
            <td>
                <button type="button" class="layui-btn layui-btn-danger layui-btn-radius" id="del">删除</button>
                &nbsp;&nbsp;&nbsp;&nbsp;

                <a href="${root}/getCustomerUpdate?aid=${customers.aid}" class="update"><button type="button" class="layui-btn layui-btn-warm layui-btn-radius">修改</button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="page">
    <button value="1" class="my_li" id="id">首页</button>
    <button value="${customers.prePage}" class="my_li">上一页</button>
    <c:forEach items="${customers.navigatepageNums}" var="num">
        <button value="${num}" class="my_li">${num}</button>
    </c:forEach>
    <button value="${customers.nextPage}" class="my_li">下一页</button>
    <button value="${customers.pages}" class="my_li">尾页</button><span>&nbsp;&nbsp;共${customers.pages}页</span>
</div>

<script>
    //分页
    function loadTables() {
        $.ajax({
            method: "GET",
            url: "${root}/listAllCustomers",
            data: {
                pageNum:$(this).val()
            }
        }).done(function (res) {
            $("#listDiv").html(res);
        })
    }

    //删除
    function getDelete(){
        if (window.confirm("是否确定删除？")){
            $.ajax({
                method:"GET",
                url:"${root}/deleteCustomer",
                data:{
                    aid:$(this).closest("tr").attr("data-id")
                }
            }).done(function (res) {
                alert(res)
                loadTables();
            })
        }
    }

    $(function() {
        $("#page").on("click",".my_li",loadTables);
        $("table").on("click","#del",getDelete);
    })
</script>
