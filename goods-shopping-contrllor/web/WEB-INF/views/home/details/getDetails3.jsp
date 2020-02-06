<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <script src="/static/js/jquery.js"></script>

    <script src="/static/js/jquery-1.11.0.min.js"></script>

<%--    图片放大特效--%>
    <script src="/static/js/zoomsl.min.js"></script>
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
            width: 800px;
            height: 420px;
            float: left;
            margin-left: 50px;
            margin-top: 100px;
        }
        .table tr td,th{
            font-size: 23px;
        }
        .table tr td{
            color: SteelBlue;
        }
        .table tr th{
            color: #1d7db1;
        }
        .p{
            float: left;
            margin-left: 18px;
        }
        img{
            width: 360px;
            height: 480px;
            margin-top: 24px;
        }
        .layui-btn{
            margin-left: 50px;
        }
    </style>
</head>
<body>
    <script>
          // 图片放大特效
          jQuery(function(){
              $('.ph').imagezoomsl({
                  zoomrange: [4, 4]
              });
          });
    </script>
    <h1>商品信息</h1>
<div id="details">
    <table class="table table-bordered table-condensed table-striped">
        <tr>
            <th>商品编号：</th>
            <td class="goodsId" data-id="${good.goodsId}">${good.goodsId}</td>
        </tr>
        <tr>
            <th>商品名称：</th>
            <td>${good.goodsName}</td>
        </tr>
        <tr>
            <th>商品原价：</th>
            <td>￥ ${good.goodsPrice}</td>
        </tr>
        <tr>
            <th>商品会员价：</th>
            <td>￥ ${good.disPrice}</td>
        </tr>
        <tr>
            <th>商品库存数量：</th>
            <td>
                ${good.intotal}
            </td>
        </tr>
        <tr>
            <th>商品类型编号：</th>
            <td>
                ${good.categoryId}
            </td>
        </tr>
    </table>
    <a href="/buy/getAdress"><button type="button" class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius layui-btn-warm" id="buy">立即购买</button></a>
    <a href="/home"><button type="button" class="layui-btn">返回</button></a>
    </div>

    <div class="p">
         <div id="photo">
             <img src="/static/goodsphotoes/${good.imgurl}" class="ph">
         </div>
    </div>

</body>
</html>
