<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/22
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客信息修改</title>
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        h1{
            font-size: 36px;
            font-family: 华文新魏;
            color: #1d7db1;
        }
        #customersDiv{
            width: 800px;
            height: 600px;
            border: 1px solid blue;
            margin-left: 50px;
            box-shadow: 0px 10px 5px blue;
            margin-top: 5px;
        }
        #customersDiv div{
            margin-bottom: 15px;
        }
        span{
            font-size: 24px;
            color: blueviolet;
            margin-left: 24px;
        }
        input{
            width:560px;
            height: 36px;
            font-size: 27px;
            margin-left: 64px;
            border: 1px solid blueviolet;
        }
        a{
            margin-top: 12px;
        }
    </style>
</head>
<body>
<div id="customersDiv">
    <h1>用户管理-->顾客修改</h1>
    <form method="post" action="${root}/customerUpdate">
        <div>
            <span>顾客编号：</span><input type="text" name="aid" value="${customer.aid}" readonly="readonly"><br/>
        </div>
        <div>
            <span>用户账号：</span><input type="text" name="account" value="${customer.account}"><br/>
        </div>
        <div>
            <span>用户密码：</span><input type="text" name="password" value="${customer.password}"><br/>
        </div>
        <div>
            <span>用户昵称：</span><input type="text" name="fname" value="${customer.fname}"><br/>
        </div>
        <div>
            <span>用&nbsp;户&nbsp;&nbsp;名：</span> <input type="text" name="name" value="${customer.name}"><br/>
        </div>
        <div>
            <span>用户号码：</span><input type="text" name="number" value="${customer.number}" readonly="readonly"><br/>
        </div>
        <div>
            <span>用户地址：</span><input type="text" value="${customer.adress}" name="adress"><br/>
        </div>
        <div>
            <input type="submit" id="subitDetails" value="提交" style="font-size: 25px;color: white;background-color: blueviolet">
        </div>
    </form>
</div>
<a href="/getCustomer"><button type="button" class="layui-btn layui-btn-normal" style="margin-top: 15px;margin-left: 860px">返回</button></a>
</body>
</html>
