<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>商品信息界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script src="/static/js/jquery.js"></script>
    <style>
        #searchtext{
            margin-left: 15px;
            margin-top: 30px;
            width: 320px;
            height: 45px;
            float: left;
            font-size: 20px;
            border: #FF0000 solid 2px;
        }
        #searchbutton{
            margin-top: 30px;
            width: 80px;
            height: 45px;
            float: left;
            font-size: 20px;
            color: white;
            background-color: red;
            border: #FF0000 solid 2px;
        }
    </style>
</head>
<body>
<div>
    <h1>商品信息</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" placeholder="请输入关键字进行搜索" id="searchtext"><input type="button" value="查询" id="searchbutton">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a id="insert" href="${root}/insert"><i class="fa fa-plus-square-o fa-4x" aria-hidden="true"></i></a>
    <div id="listDiv">

    </div>
</div>

<script>
    //查询所有商品
    function loadTable() {
        $.ajax({
            method: "GET",
            url: "${root}/listGoods"
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
