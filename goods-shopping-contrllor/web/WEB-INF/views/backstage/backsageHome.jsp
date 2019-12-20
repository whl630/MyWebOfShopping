<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>购物系统后台主页面</title>
    <link rel="stylesheet" href="/static/layui-v2.5.4/layui/css/layui.css">
    <script src="/static/js/jquery.js"></script>
    <script src="/static/layui-v2.5.4/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo"> 零式购物系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">邮件管理</a></dd>
                    <dd><a href="javascript:;">消息管理</a></dd>
                    <dd><a href="javascript:;">授权管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" id="login"><a href="/operatorLogin" style="color: white">登录</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <c:if test="${sessionScope.operator != null}">
                    <img src="/static/images/${sessionScope.operator.operatorPicture}" class="layui-nav-img" style="width: 50px;height: 50px">
                    <span style="color: white">${sessionScope.operator.operatorUsername}</span>
                    </c:if>
                    <c:if test="${sessionScope.operator == null}">
                        <img src="/static/img/默认头像.jpg" class="layui-nav-img" style="width: 50px;height: 50px">
                        还未注册哦
                    </c:if>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">基本资料</a></dd>
                    <dd><a href="javascript:;">安全设置</a></dd>
                    <dd><a href="javascript:;">修改信息</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/quit" id="quit">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${root}/listGood" target="box">商品信息管理</a></dd>
                        <dd><a href="/getGoodsType" target="box">商品类型操作</a></dd>
                        <dd><a href="/back/listgooddetails" target="box">商品详情表管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" target="box">用户信息管理</a></dd>
                        <dd><a href="javascript:;" target="box">会员信息管理</a></dd>
                        <dd><a href="/operator/list" target="box">管理员信息管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" target="box">订单(生成订单)</a></dd>
                        <dd><a href="javascript:;" target="box">订单(已发货)</a></dd>
                        <dd><a href="javascript:;" target="box">订单(未签收)</a></dd>
                        <dd><a href="javascript:;" target="box">订单(已签收)</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">云市场</a></li>
                <li class="layui-nav-item"><a href="javascript:;">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe name="box" width="1300px" height="2000px">

        </iframe>
    </div>


    <div class="layui-footer">
        <!-- 底部固定区域 -->
        @ 零式购物系统
    </div>

</div>
<script src="/static/layui-v2.5.4/layui/lay/modules/carousel.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>
