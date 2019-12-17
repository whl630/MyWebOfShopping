<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/static/css/myCart.css">
<style>
    #page{
        border: 1px solid yellow;
        width: 100%;
        height: 50px;
        float: left;
    }
    #page .my_li{
        width: 100px;
        height: 40px;
        border: 1px solid darkgreen;
        margin: auto;
    }
    .item{
        float: left;
        margin-bottom: 110px;
        margin-left: 20px;
    }
</style>
<c:forEach items="${goods.list}" var="good">
    <div class="item" data-id="${good.goodsId}">
        <h4 style="color: green;font-family: 华文新魏;font-size: 25px">${good.goodsName}</h4>
        <img src="static/goodsphotoes/${good.imgurl}" alt="item" style="width: 195px;height: 180px" class="showImg" href="${root}/details/getDetails?goodsId=${good.goodsId}"/>
        <p>原价: <b style="color: red;font-size: 24px">￥${good.goodsPrice}</b><br/>
            会员价：<b style="color: green;font-size: 24px">￥${good.disPrice}</b>
        </p>
        <button class="add-to-cart" data-id="${good.goodsId}" type="button" style="border: 1px solid red;font-size: 18px;font-family: 华文新魏;">添加到购物车</button>
    </div>
</c:forEach>

<div id="page">
    <button value="1" class="my_li" id="id">首页</button>
    <button value="${goods.prePage}" class="my_li">上一页</button>
    <c:forEach items="${goods.navigatepageNums}" var="num">
        <button value="${num}" class="my_li">${num}</button>
    </c:forEach>
    <button value="${goods.nextPage}" class="my_li">下一页</button>
    <button value="${goods.pages}" class="my_li">尾页</button><span>&nbsp;&nbsp;共${goods.pages}页</span>
</div>

<script>
    $('.add-to-cart').on('click', function () {
        var cart = $('.shopping-cart');
        var imgtodrag = $(this).parent('.item').find('img').eq(0);
        if (imgtodrag) {
            var imgclone = imgtodrag.clone().offset({
                top: imgtodrag.offset().top,
                left: imgtodrag.offset().left
            }).css({
                'opacity': '0.5',
                'position': 'absolute',
                'height': '150px',
                'width': '150px',
                'z-index': '100'
            }).appendTo($('body')).animate({
                'top': cart.offset().top + 10,
                'left': cart.offset().left + 10,
                'width': 75,
                'height': 75
            }, 1000, 'easeInOutExpo');
            setTimeout(function () {
                cart.effect('shake', { times: 2 }, 200);
            }, 1500);
            imgclone.animate({
                'width': 0,
                'height': 0
            }, function () {
                $(this).detach();
            });
        }
    });
    function loadTables() {
        $.ajax({
            method: "GET",
            url: "${root}/getGoods",
            data: {
                pageNum:$(this).val()
            }
        }).done(function (res) {
            $("#list").html(res);
        })
    }
    function getDetailes() {
        $.ajax({
            method:"GET",
            url:"${root}/details/getDetails",
            data:{
                goodsId: $(this).closest("div").attr("data-id")
            }
        }).success(function () {
            alert("正在进入商品详情视图！")
        })
    }
    $(function () {
        $("#page").on("click",".my_li",loadTables);
        //点击图片进入商品详情
        $(document).on("click",".showImg",function () {
            getDetailes()
        });
        //购物车动画
        $(".add-to-cart").click(function () {
            $(".goods").animate_from_to("#cart")
        });
        $(".add-to-cart").click(function (event) {
            $.ajax({
                method: "GET",
                url:"${root}/addCart",
                data: {
                    goodsId: $(this).closest("tr").attr("data-id")
                }
            }).done(function () {
                alert("添加成功")
                loadCart();
            })
            event.preventDefault();
        });
    });
</script>
