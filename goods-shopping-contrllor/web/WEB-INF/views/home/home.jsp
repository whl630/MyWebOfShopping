<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>网上商城首页</title>
    <link rel="stylesheet" type="text/css" href="http://demo.lanrenzhijia.com/demo/51/5125/demo/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="http://demo.lanrenzhijia.com/demo/51/5125/demo/css/default.css">
    <link rel="stylesheet" type="text/css" href="/static/home/css/styles.css">

    <link rel="stylesheet" href="/static/home/css/style.css">
    <link rel="stylesheet" href="/static/dist/pageSwitch.min.css">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/common.css">
    <link rel="stylesheet" href="static/layui-v2.5.4/layui/css/layui.css" type="text/css" media="all">
    <script src="static/layui-v2.5.4/layui/layui.js" type="text/javascript"></script>
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/home/css/hui.css" />
    <script type="text/javascript" src="/static/home/css/hui.js"></script>
    <script src="/static/home/css/hui-tab.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        .item img {
            display: block;
            margin: auto;
        }
        h2 {
            font-size: 16px;
            display: block;
            border-bottom: 1px solid #ccc;
            margin: 0 0 10px 0;
            padding: 0 0 5px 0;
        }
        button {
            border: 1px solid #722A1B;
            padding: 4px 14px;
            background-color: #fff;
            color: #722A1B;
            text-transform: uppercase;
            float: right;
            margin: 5px 0;
            font-weight: bold;
            cursor: pointer;
        }
        span.car {
            float: right;
        }
        #container{
            width: 915px;
            height: 450px;
            float: right;
        }
        #mydiv li a{
            font-size: 27px;
            float: left;
            margin-left: 105px;
            font-family: 华文新魏;
        }
        #mydiv li a:hover{
            font-weight: bold;
            color: green;
            text-decoration: none;
        }
        #mydiv .listgoods{
            margin-left: 160px;
            margin-right: -35px;
        }

        body{
            background: url("/static/images/管理员登录背景图.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
        #thirdDiv{
            border: 1px solid blue;
            margin-left: 2px;
            width: 760px;
            height: 450px;
            float: left;
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
    <div class="parentDiv">
        <c:if test="${sessionScope.customer != null}">
                您好！尊贵的&nbsp;<span style="font-size: 27px">${sessionScope.customer.fname}</span>
                <a href="/customerQuit"><button type="button" class="layui-btn layui-btn-lg layui-btn-normal" id="getPhoto">注销</button></a><br/>
            <div id="mydiv">
                <li><a href="${root}/listGoodsByPage" class="listgoods">商城商品</a></li>
                <li><a href="${root}/goodsName/killPrice" class="listgoods">促销商品</a></li>
                <li><a href="#/" class="member">会员中心</a></li>
                <li><a href="#/">我的管理</a></li>
                <li><a href="#/" class="help">关于我们</a></li>
                <li><a href="${root}/order/listOrders" class="order">我的订单</a></li>
            </div>
        </c:if>
        <c:if test="${sessionScope.customer == null}">
        <div id="nav-1">
            <ul class="nav">
                <li class="slide1">Visited</li>
                <li class="slide2">Hover</li>
                    <li><a class="active" href="${root}/slign" class="registration">免费注册</a></li>
                    <li><a href="${root}/login" class="login">亲！请登录</a></li>
                    <li><a href="${root}/listGoodsByPage" class="listgoods">商城商品</a></li>
                <li><a href="${root}/goodsName/killPrice" class="listgoods">促销商品</a></li>
                    <li><a href="#/" class="member">会员中心</a></li>
                    <li><a href="#/">我的管理</a></li>
                    <li><a href="#/" class="help">关于我们</a></li>
                    <li><a href="${root}/order/listOrders" class="order">我的订单</a></li>
            </ul>
        </div>
        </c:if>
        <div class="secondDiv">
            <img src="/static/img/logobig.png"/>
            <input type="text" placeholder="老坛酸菜牛肉面" id="searchtext"/>
            <input type="button" value="搜索" id="searchbutton"/>
        </div>
        <div id="thirdDiv">
    <div>
        <div class="hui-tab">
            <div class="hui-tab-title">
                <div class="item_getName" data-id="1">果蔬</div>
                <div class="item_getName" data-id="2">家具电器</div>
                <div class="item_getName" data-id="3">手机电脑</div>
                <div class="item_getName" data-id="4">食品</div>
                <div class="item_getName" data-id="5">生活用品</div>
                <div class="item_getName" data-id="6">饮品</div>
                <div class="item_getName" data-id="7">书籍</div>
                <div class="item_getName" data-id="8">服装</div>
                <div class="item_getName" data-id="9">其他</div>
            </div>
            <div class="hui-tab-body">
                <div class="hui-tab-body-items">
                    <div class="hui-tab-item" id="getName1">

                    </div>
                    <div class="hui-tab-item" id="getName2">

                    </div>
                    <div class="hui-tab-item" id="getName3">

                    </div>
                    <div class="hui-tab-item" id="getName4">

                    </div>
                    <div class="hui-tab-item" id="getName5">

                    </div>
                    <div class="hui-tab-item" id="getName6">

                    </div>
                    <div class="hui-tab-item" id="getName7">

                    </div>
                    <div class="hui-tab-item" id="getName8">

                    </div>
                    <div class="hui-tab-item" id="getName9">

                    </div>
                </div>
            </div>
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
            <h1 style="margin-left: 780px;font-size:32px;color: blueviolet">热门商品</h1>
            <c:forEach items="" var="g">
                <div id="four_first">
                    <span></span>

                </div>
            </c:forEach>
        </div>

    </div>
    <script>
        $(function () {
            getNames1()
            getNames2()
            getNames3()
            getNames4()
            getNames5()
            getNames6()
            getNames7()
            getNames8()
            getNames9()
            $(document).on("click","#searchbutton",function () {
                $.ajax({
                    method:"GET",
                    url:"/getGoodByName",
                    data:{
                        goodsName:$("#searchtext").val()
                    }
                }).done(function () {
                    var name = $("#searchtext").val();
                    $(window).attr('location','getGoodByName?goodsName='+name);
                })
            })
        })
        function getNames1() {
            var num = 1;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName1").html(res)
            })
        }
        function getNames2() {
            var num = 2;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName2").html(res)
            })
        }
        function getNames3() {
            var num = 3;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName3").html(res)
            })
        }
        function getNames4() {
            var num = 4;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName4").html(res)
            })
        }
        function getNames5() {
            var num = 5;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName5").html(res)
            })
        }
        function getNames6() {
            var num = 6;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName6").html(res)
            })
        }
        function getNames7() {
            var num = 7;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName7").html(res)
            })
        }
        function getNames8() {
            var num = 8;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName8").html(res)
            })
        }
        function getNames9() {
            var num = 9;
            $.ajax({
                method:"GET",
                url:"/listName",
                data:{
                    categoryId:num
                }
            }).done(function (res) {
                $("#getName9").html(res)
            })
        }
    </script>

    <script type="text/javascript">
        hui.tab('.hui-tab');
    </script>
    <script type="text/javascript" src='http://demo.lanrenzhijia.com/demo/51/5125/demo/js/jquery-ui.min.js'></script>
    <script src='/static/home/js/jquery.min.js'></script>
    <script src="/static/home/js/script.js"></script>

    <script src="/static/js/HomeGetGoodsNames.js"></script>
    <link href="/static/js/bootstrap.min.css" type="text/css" rel="stylesheet">
    <script src="/static/js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="/static/js/jquery.animate_from_to-1.0.js"></script>
    <script src="/static/dist/pageSwitch.min.js"></script>
    <script src="/static/js/container.js"></script>
    <script src="/static/js/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">

</body>
</html>
