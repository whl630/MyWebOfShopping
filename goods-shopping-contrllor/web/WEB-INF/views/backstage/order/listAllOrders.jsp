<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2020/1/26
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单视图</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>

    <style>
        #listOrder{
            margin-top: 12px;
            border: 2px solid gray;
        }
    </style>
</head>
<body>
<button type="button" class="layui-btn layui-btn-danger" style="margin-top: 12px;margin-left: 620px">批量删除</button>

    <div id="listOrder">

    </div>

    <script>
        //查询所有订单
        function getAllOrders() {
            $.ajax({
                method:"GET",
                url:"/order/getAllOrders"
            }).done(function (res) {
                $("#listOrder").html(res);
            })
        }

        $(function () {
            getAllOrders();
        })
    </script>
</body>
</html>
