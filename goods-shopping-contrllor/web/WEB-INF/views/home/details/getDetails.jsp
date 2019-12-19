<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/16
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <script src="/static/js/jquery.js"></script>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }
        body{
            background: url("/static/images/背景图.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
        h1{
            font-size: 48px;
            font-family: 华文新魏;
            color: #0000FF;
            font-weight: bold;
            padding: 15px;
            margin-left: 630px;
        }
        #details{
            width: 1000px;
            height: 800px;
            margin: auto;
        }
        .table tr td,th{
            font-size: 24px;
        }
        .table tr td{
            color: SteelBlue;
        }
        .table tr th{
            color: #1d7db1;
        }
    </style>
</head>
<body>
    <h1>商品详情</h1>
<div id="details">
    <table class="table table-bordered table-condensed table-striped">
        <tr>
            <th>商品编号</th>
            <td class="detailsId" data-id="${details.detailsId}">${details.detailsId}</td>
        </tr>
        <tr>
            <th>商品保质期</th>
            <td>${details.detailsShelf}</td>
        </tr>
        <tr>
            <th>以销售数量</th>
            <td>${details.detailsQuintity}</td>
        </tr>
        <tr>
            <th>生产地区</th>
            <td>${details.detailsOrigin}</td>
        </tr>
        <tr>
            <th>商品描述</th>
            <td><textarea style="width: 820px;height: 60px">
                ${details.detailsDes}
            </textarea></td>
        </tr>
        <tr>
            <th>生产日期</th>
            <td>${details.detailsTime}</td>
        </tr>
    </table>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="/buy/getAdress"><button type="button" class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius layui-btn-warm" id="buy">立即购买</button></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <button type="button" class="layui-btn layui-btn-lg layui-btn-normal" id="add">加入购物车</button><br/>


    <a href="/listGoodsByPage"><button type="button" class="layui-btn">返回</button></a>
    </div>

    <script>
        $(function () {
            $("#add").click(function (event) {
                $.ajax({
                    method: "GET",
                    url:"${root}/addCart",
                    data: {
                        goodsId: $(".detailsId").attr("data-id")
                    }
                }).done(function () {
                    alert("添加成功")
                    loadCart();
                })
                event.preventDefault();
            });

        });
    </script>
</body>
</html>
