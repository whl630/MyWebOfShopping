<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户注册</title>
    <link rel='stylesheet prefetch' href='static/css/reset.css'>
    <link rel="stylesheet" type="text/css" href="static/css/default.css">
    <link rel="stylesheet" type="text/css" href="static/css/styles.css">
</head>
<body>
<header class="htmleaf-header">
    <h1 id="myh1">分步式网上商城用户注册表单</h1>
    <div class="htmleaf-links">
        <a class="htmleaf-icon icon-htmleaf-home-outline" href="${root}/list" title="返回购物商城主页" target="_blank"><span> 返回购物商城主页</span></a>
        <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="${root}/login1" title=" 已有账号，去登录 > >" target="_blank"><span> 已有账号，去登录 > ></span></a>
    </div>
</header>

<article class="htmleaf-content">
    <!-- multistep form -->
    <form id="msform">
        <!-- progressbar -->
        <ul id="progressbar">
            <li class="active">账号设置</li>
            <li>社交账号</li>
            <li>个人详细信息</li>
        </ul>
        <!-- fieldsets -->
        <fieldset>
            <h2 class="fs-title">创建你的账号</h2>
            <h3 class="fs-subtitle">这是第一步</h3>
            <input type="text" name="account" placeholder="账号名" />
            <input type="password" name="password" placeholder="账号密码" />
            <input type="password" name="password2" placeholder="账号重复密码" />
            <input type="button" name="next" class="next action-button" value="下一步" /><br/>
        </fieldset>
        <fieldset>
            <h2 class="fs-title">填写社交账号</h2>
            <h3 class="fs-subtitle">填写你的常用社交网络账号</h3>
            <input type="text" name="x-weibo" placeholder="新浪微博" />
            <input type="text" name="weixin" placeholder="微信" />
            <input type="text" name="qq" placeholder="腾讯QQ" />
            <input type="button" name="previous" class="previous action-button" value="上一步" />
            <input type="button" name="next" class="next action-button" value="下一步" />
        </fieldset>
        <fieldset>
            <h2 class="fs-title">个人详细信息</h2>
            <h3 class="fs-subtitle">个人详细信息是保密的，不会被泄露</h3>
            <input type="text" name="fname" placeholder="昵称" />
            <input type="text" name="name" placeholder="姓名" />
            <input type="text" name="phone" placeholder="电话号码" />
            <textarea name="address" placeholder="家庭住址"></textarea>
            <input type="button" name="previous" class="previous action-button" value="上一步" />
            <input type="submit" name="submit" class="submit action-button" value="提交" />
        </fieldset>
    </form>
</article>

<script src="static/js/jquery-2.1.1.min.js"></script>
<script src="static/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="static/js/style.js" type="text/javascript"></script>
</body>
</html>
