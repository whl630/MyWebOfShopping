<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2020/1/26
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        h1{
            margin-top: 24px;
            margin-left: 600px;
            color: green;
            font-family: 华文新魏;
            font-size: 36px;
        }
        .good{
            margin: auto;
            width: 540px;
            height: 380px;
            border: 2px solid darkgreen;
            box-shadow: 1px 12px 8px darkolivegreen;
        }
        input{
            margin-bottom: 10px;
            margin-top: 18px;
            width: 320px;
            height: 42px;
            border: 1px solid green;
            font-size: 28px;
        }
        span{
            margin: 36px;
        }
    </style>
</head>
<body>
    <h1>商品信息</h1>
    <div class="good">
      <span>商品编号：</span> <input type="text" value="${good.goodsId}"><br/>
      <span>商品名称：</span> <input type="text" value="${good.goodsName}"><br/>
      <span>商品价格：</span>  <input type="text" value="￥ ${good.goodsPrice}"><br/>
      <span>会员价格：</span> <input type="text" value="￥ ${good.disPrice}"><br/>
      <span>库存数量：</span> <input type="text" value="${good.intotal}"><br/>
        <a href="/order/listAllOrders"><button type="button" class="layui-btn layui-btn-normal" style="margin-top: 15px;margin-left: 860px">返回</button></a>
    </div>
</body>
</html>
