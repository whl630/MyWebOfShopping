<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2020/1/26
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>未付款视图</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        #listOrdersByOrderState{
            margin-top: 12px;
            border: 2px solid gray;
        }

        body{
            background: url("/static/images/订单界面.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <div id="listOrdersByOrderState">

    </div>

    <script>
        var state = 1;
        //通过订单状态查询订单
        function getAllOrders() {
            $.ajax({
                method:"GET",
                url:"/order/GetOrderByOrderState",
                data:{
                    orderState:state
                }
            }).done(function (res) {
                $("#listOrdersByOrderState").html(res);
            })
        }

        $(function () {
            getAllOrders();
        })
    </script>
</body>
</html>
