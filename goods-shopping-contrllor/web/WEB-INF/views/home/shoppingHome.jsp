<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>网上购物商城</title>
    <link rel="stylesheet" type="text/css" href="/static/css/index.css"/>
    <link rel="stylesheet" href="/static/dist/pageSwitch.min.css">
    <link rel="stylesheet" href="/static/css/container.css">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="static/layui-v2.5.4/layui/css/layui.css" type="text/css" media="all">
    <script src="static/layui-v2.5.4/layui/layui.js" type="text/javascript"></script>
    <script src="/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="parentDiv">
    <div class="firstDiv">
        <ul class="fr">
            <li class="fore1"><a href="${root}/login1" id="login">亲!请登录</a>&nbsp;&nbsp;&nbsp;<a href="${root}/slign" id="registration">免费注册</a></li>
            <li class="fore2"><a href="#" id="order">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我的订单&nbsp;</a></li>
            <li class="fore3"><a href="#" id="member">会员管理&nbsp;</a></li>
            <li class="fore4"><a href="#" id="help">帮助</a></li>
        </ul>
    </div><br>
    <div class="secondDiv">
        <img src="/static/img/logobig.png"/>
        <input type="text" placeholder="老坛酸菜牛肉面" id="searchtext"/>
        <input type="button" value="搜索" id="searchbutton"/>
        <img src="/static/img/购物车.jpg" href="#" id="img2">
    </div>
    <div id="thirdDiv">
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this" id="f1" value="1">果蔬</li>
                <li id="f2" value="2">家具电器</li>
                <li id="f3" value="3">手机电脑</li>
                <li id="f4" value="4">食品</li>
                <li id="f5" value="5">生活用品</li>
                <li id="f6" value="6">书籍</li>
                <li id="f7" value="7">饮品</li>
                <li id="f8" value="8">其他</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show" id="d1">
                    <a href="#">梨</a><a href="#">花生</a>
                </div>
                <div class="layui-tab-item" id="d2">内容1</div>
                <div class="layui-tab-item" id="d3">内容2</div>
                <div class="layui-tab-item" id="d4">内容3</div>
                <div class="layui-tab-item" id="d5">内容4</div>
                <div class="layui-tab-item" id="d6">内容5</div>
                <div class="layui-tab-item" id="d7">内容6</div>
                <div class="layui-tab-item" id="d8">内容7</div>
            </div>
        </div>
    </div>
    <div id="container">
        <div class="sections">
            <div class="section" id="section0"></div>
            <div class="section" id="section1"></div>
            <div class="section" id="section2"></div>
            <div class="section" id="section3"></div>
            <div class="section" id="section4"></div>
            <div class="section" id="section5"></div>
            <div class="section" id="section6"></div>
        </div>
    </div>
    <div id="fourDiv">

    </div>
</div>
<script>
    //遍历Goods
    function listGoods() {
        $.ajax({
            url:"${root}/getGoods",
            method:"GET"
        }).done(function (res) {
            $("#fourDiv").html(res)
        });
    }
    //遍历商品名并分类
    <%--$("#f2").click(function () {--%>
    <%--    $.ajax({--%>
    <%--        url:"${root}/listName",--%>
    <%--        type:"GET",--%>
    <%--        data:categoryId = $("#f2").val(),--%>
    <%--        success:function (data) {--%>
    <%--            alert("正在查询！");--%>
    <%--            var str = "";--%>
    <%--            data.forEach(function(i){--%>
    <%--                str += "<a>"+i.goodsName+"</a>";--%>
    <%--            })--%>
    <%--            $("#d2").append(str);--%>
    <%--        }--%>
    <%--    })--%>
    <%--});--%>
        $("#f2").click(function () {
            $.ajax({
                url:"${root}/listName",
                method:"GET",
                data:"categoryId=2"
            }).done(function (res) {
                alert("udguheru")
                $("#d2").html(res)
            })
        })
    $("#f2").click(function () {
        $.ajax({
            url:"${root}/listName",
            method:"GET",
            data:"categoryId=2"
        }).done(function (res) {
            alert("udguheru")
            $("#d2").html(res)
        })
    })
    $(function () {
        listGoods();
    })


</script>
<link href="/static/js/bootstrap.min.css" type="text/css" rel="stylesheet">
<script src="/static/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="/static/dist/pageSwitch.min.js"></script>
<script src="/static/js/container.js"></script>
<script src="/static/js/layui.js"></script>
<link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
</body>
</html>
