<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>管理员界面</title>
    <script src="/static/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>

    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
</head>
<body>
    <br/>
    <button type="button" class="layui-btn layui-btn-warm layui-btn-lg" style="margin-left: 560px"><i class="layui-icon"></i></button>
    <br/><br/>
    <div id="operator">

    </div>
    <script>
        $(function () {
            $.ajax({
                method:"GET",
                url:"${root}/operator/getOperators"
            }).done(function (res) {
                $("#operator").html(res)
            })
        })
    </script>
</body>
</html>
