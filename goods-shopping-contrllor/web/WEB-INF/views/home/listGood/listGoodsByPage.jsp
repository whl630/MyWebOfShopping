<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>所有商品</title>
    <link rel="stylesheet" type="text/css" href="http://demo.lanrenzhijia.com/demo/51/5125/demo/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="http://demo.lanrenzhijia.com/demo/51/5125/demo/css/default.css">
    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="/static/home/css/styles.css">
    <script src="/static/js/jquery.js"></script>
    <style>
        #list{
            width: 100%;
            height: 1280px;
            border: 2px solid red;
            float: left;
        }
        span.car {
            float: right;
        }
        .mycart {
            border: 1px solid gray;
            border-radius: 5px;
            background: white;
            padding: 15px;
            width: 560px;

            position: fixed;
            right: 10px;
            top: 40px;

            display: ${param.showCart != 1 ? 'none' : 'block'};
        }
    </style>
    <script>
        //加载购物车
        function loadCart() {
            $(".mycart").load("${root}/shopping/cartInfo");
        }
        $(function () {
            loadCart();
            //将商品添加至购物车中

            $(document).on("click",".add-to-cart",function (event) {
                $.ajax({
                    method: "GET",
                    url: "${root}/shopping/addCart",
                    data: { goodsId: $(this).attr("data-id") }
                }).done(function () {
                    loadCart();
                })
                event.preventDefault();
            });
        })
    </script>
</head>
<body>
<div class="mycart">
</div>
<a style="font-size: 36px;color: blue;text-decoration: none;font-family: 华文新魏" href="/home">返回</a>
<a style="color: green;font-family: 华文新魏;font-weight: bold;font-size: 50px;margin-left:600px">商品信息</a>
<span class="car"><img src="/static/img/购物车.jpg" class="shopping-cart" style="width: 60px;height: 60px"></span>
    <div id="list">

    </div>
<script type="text/javascript" src='http://demo.lanrenzhijia.com/demo/51/5125/demo/js/jquery-ui.min.js'></script>
<script>
    document.querySelector(".shopping-cart").addEventListener("click", function (evt) {
        evt.preventDefault();
        var cart = document.querySelector(".mycart");
        var display = cart.style.display;
        cart.style.display = display === 'block' ? 'none' : 'block';
    });
    //遍历Goods
    function listGoods() {
        $.ajax({
            url:"${root}/getGoods",
            method:"GET"
        }).done(function (res) {
            $("#list").html(res)
        });
    }

    $(function () {
        listGoods();
    })
</script>
<link href="/static/js/bootstrap.min.css" type="text/css" rel="stylesheet">
</body>
</html>
