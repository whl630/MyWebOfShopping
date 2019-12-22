<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/22
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
</head>
<body>
    <div id="listDiv">

    </div>

    <script>
        //查询所有顾客信息
        function loadTable() {
            $.ajax({
                method: "GET",
                url: "${root}/listAllCustomers"
            }).done(function (res) {
                $("#listDiv").html(res);
            })
        }
        $(function () {
            loadTable();
        });

    </script>
</body>
</html>
