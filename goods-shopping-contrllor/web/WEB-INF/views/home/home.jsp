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

    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        .wrapper {
            width: 705px;
            margin: 20px auto;
            padding: 20px;
        }
        h1.title {
            display: inline-block;
            background-color: #333;
            color: #fff;
            font-size: 20px;
            font-weight: normal;
            text-transform: uppercase;
            padding: 4px 20px;
            float: left;
        }
        .clear {
            clear: both;
        }
        .items {
            display: block;
            margin: 20px 0;
        }
        .item {
            background-color: #fff;
            float: left;
            margin: 0 10px 10px 0;
            width: 205px;
            padding: 10px;
            height: 290px;
        }
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
            font-size: 28px;
            float: left;
            margin-left: 110px;
            font-family: 华文新魏;
        }
        #mydiv li a:hover{
            font-weight: bold;
            color: green;
            text-decoration: none;
        }
        #mydiv .listgoods{
            margin-left: 360px;
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
                <li><a href="#/" class="member">会员中心</a></li>
                <li><a href="#/">我的管理</a></li>
                <li><a href="#/" class="help">关于我们</a></li>
                <li><a href="#/" class="order">我的订单</a></li>
                <li><a href="#" class="displayCart">&nbsp;&nbsp 购物车</a><span class="car"></span></li>
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
                    <li><a href="#/" class="member">会员中心</a></li>
                    <li><a href="#/">我的管理</a></li>
                    <li><a href="#/" class="help">关于我们</a></li>
                    <li><a href="${root}/order/listOrders" class="order">我的订单</a></li>
                    <li><a href="#" class="displayCart">&nbsp;&nbsp 购物车</a><span class="car"></span></li>
            </ul>
        </div>
        </c:if>
        <div class="secondDiv">
            <img src="/static/img/logobig.png"/>
            <input type="text" placeholder="老坛酸菜牛肉面" id="searchtext"/>
            <input type="button" value="搜索" id="searchbutton"/>
        </div>
        <div id="thirdDiv">
            <div class="layui-tab">
                <ul class="layui-tab-title">
                    <li class="layui-this">果蔬</li>
                    <li>家具电器</li>
                    <li>手机电脑</li>
                    <li>食品</li>
                    <li>生活用品</li>
                    <li>书籍</li>
                    <li>饮品</li>
                    <li>服装</li>
                    <li>其他</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        花生
                    </div>
                    <div class="layui-tab-item">内容1</div>
                    <div class="layui-tab-item">内容2</div>
                    <div class="layui-tab-item">内容3</div>
                    <div class="layui-tab-item">内容4</div>
                    <div class="layui-tab-item">内容5</div>
                    <div class="layui-tab-item">内容6</div>
                    <div class="layui-tab-item">内容7</div>
                    <div class="layui-tab-item">内容8</div>
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
            <div class="four_first">
                <h1 style="margin-left: auto">热门商品</h1>
            </div>
            <div class="four_first">

            </div>
        </div>
    </div>
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
