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
            width: 300px;
            height: 420px;
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
                  zoomrange: [3, 3]
              });
          });
    </script>
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
            <td><textarea style="width: 500px;height: 60px">
                ${details.detailsDes}
            </textarea></td>
        </tr>
        <tr>
            <th>生产日期</th>
            <td>${details.detailsTime}</td>
        </tr>
    </table>
    <a href="/buy/getAdress"><button type="button" class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius layui-btn-warm" id="buy">立即购买</button></a>
    <button type="button" class="layui-btn layui-btn-lg layui-btn-normal" id="add">加入购物车</button>
    <a href="/listGoodsByPage"><button type="button" class="layui-btn">返回</button></a>
    </div>

    <div class="p">
         <button type="button" class="layui-btn layui-btn-lg layui-btn-normal" id="getPhoto">获取图片</button><br/>
         <div id="photo">
<%--             <img src="/static/goodsphotoes/土豆.jpg" class="ph">--%>
         </div>
    </div>
    <script>
        $(function () {
            //点击添加购物车将数据添加到购物车
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

            //给id为getPhoto的按钮设置绑定事件。
           $(document).on("click","#getPhoto",getPhoto);
            
        });
        
        function getPhoto() {
            //请求商品信息
            $.ajax({
                method: "GET",
                url:"/updateForDetails",
                data: {
                    goodsId: $(".detailsId").attr("data-id")
                }
            }).done(function (res) {
                alert(res)
                $("#photo").html(res)
            })
        }
    </script>
</body>
</html>
