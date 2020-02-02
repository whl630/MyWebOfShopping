<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的订单</title>
    <link href="/static/home/css/admin.css" rel="stylesheet" type="text/css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="/static/home/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/static/home/css/orstyle.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="/static/home/css/hui.css" />
    <script type="text/javascript" src="/static/home/css/hui.js"></script>
    <script src="/static/home/css/hui-tab.js" type="text/javascript"></script>

    <script src="/static/js/jquery.js"></script>
    <style>
        body{
            background: url("/static/images/订单界面.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
<header class="hui-header">
    <div id="hui-back"></div>
    <h1>网上商城————订单界面</h1>
</header>
<div class="hui-wrap">
    <div class="hui-common-title" style="margin-top:15px;">
        <div class="hui-common-title-line"></div>
        <div class="hui-common-title-txt"><p style="font-family: 华文新魏;color: green;font-size: 32px">网上商城——我的订单</p></div>
        <div class="hui-common-title-line"></div>
    </div>
    <div style="padding:28px 0px;">
        <div class="hui-tab">
            <div class="hui-tab-title">
                <div id="div">所有订单</div>
                <div id="div1" data-id="1">待付款</div>
                <div id="div2" data-id="2">待发货</div>
                <div id="div3" data-id="3">待收货</div>
                <div id="div4" data-id="4">待评价</div>
            </div>
            <div class="hui-tab-body">
                <div class="hui-tab-body-items">
                    <div class="hui-tab-item hui-list">
                       <div id="AllOrders">

                       </div>
                    </div>
                    <div class="hui-tab-item hui-list">
                        <div id="getOrder1">

                        </div>
                    </div>
                    <div class="hui-tab-item hui-list">
                        <div id="getOrder2">

                        </div>
                    </div>
                    <div class="hui-tab-item hui-list">
                        <div id="getOrder3">

                        </div>
                    </div>
                    <div class="hui-tab-item hui-list">
                        <div id="getOrder4">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script  type="text/javascript">
    hui.tab('.hui-tab');
</script>
<script type="text/javascript">
    //加载所有订单
    function getAllOrders(){
        $.ajax({
            method:"GET",
            url:"/orders/getAllOrders",
        }).done(function (res) {
            $("#AllOrders").html(res)
        })
    }
    $(function () {
        getAllOrders();
        //遍历所有订单
        $(".hui-tab-title").on("click","#div",function () {
            $.ajax({
                method:"GET",
                url:"/orders/getAllOrders",
            }).done(function (res) {
                $("#AllOrders").html(res)
            })
        })
        //遍历未支付订单
        $(".hui-tab-title").on("click","#div1",function () {
            $.ajax({
                method:"GET",
                url:"/orders/getOrderByOrderState1",
                data:{
                    orderState:$(this).closest("div").attr("data-id")
                }
            }).done(function (res) {
                $("#getOrder1").html(res)
            })
        })

        //遍历已支付订单
        $(".hui-tab-title").on("click","#div2",function () {
            $.ajax({
                method:"GET",
                url:"/orders/getOrderByOrderState1",
                data:{
                    orderState:$(this).closest("div").attr("data-id")
                }
            }).done(function (res) {
                $("#getOrder2").html(res)
            })
        })
        //遍历已发货订单
        $(".hui-tab-title").on("click","#div3",function () {
            $.ajax({
                method:"GET",
                url:"/orders/getOrderByOrderState1",
                data:{
                    orderState:$(this).closest("div").attr("data-id")
                }
            }).done(function (res) {
                $("#getOrder3").html(res)
            })
        })
        //遍历已收货订单
        $(".hui-tab-title").on("click","#div4",function () {
            $.ajax({
                method:"GET",
                url:"/orders/getOrderByOrderState1",
                data:{
                    orderState:$(this).closest("div").attr("data-id")
                }
            }).done(function (res) {
                $("#getOrder4").html(res)
            })
        })

    })

</script>
</body>
</html>
