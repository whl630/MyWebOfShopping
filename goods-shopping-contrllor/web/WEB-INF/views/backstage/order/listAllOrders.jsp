<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>订单视图</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>

    <style>
        table{
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

    <a id="delBatchOrder"><button type="button" class="layui-btn layui-btn-danger" style="margin-top: 12px;margin-left: 620px">批量删除</button></a>
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

            //批量删除
            $("#delBatchOrder").click(function () {
                $checked = $("table :checked");
                if ($checked.length < 1) {
                    alert("必须要选择至少一个")
                } else {
                    if (window.confirm("是否确定删除？")) {
                        $.ajax({
                            method: "GET",
                            url: "${root}/order/deleteBatch",
                            data: $checked.serialize()
                        }).done(function () {
                            getAllOrders();
                        })
                    }
                }
            })
        })
    </script>
</body>
</html>
