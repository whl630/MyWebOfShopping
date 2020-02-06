
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/static/home/css/base.css">
    <link rel="stylesheet" type="text/css" href="/static/home/css/home.css">

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        body{
            background: url("/static/photo/bg.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
<h1 style="font-size: 36px;font-family: 华文新魏;color: blue;margin-left: 750px;margin-top: 36px">促销商品</h1>
<div style="height:100px;"></div>
<div class="aui-content-max">
    <div class="aui-sale-time">
        <a href="javascript:;" class="aui-sale-time-link">
            <div class="aui-sale-title">限时秒杀</div>
            <div class="aui-sale-second">FLASH DEALS</div>
            <div class="aui-sale-icon-sd"></div>
            <div class="aui-sale-ends">本场距离结束还剩</div>
            <div class="aui-sale-count">
                <div class="aui-sale-count-item">
                    <span id="hour_show">00时</span>
                </div>
                <div class="aui-sale-count-item">
                    <span id="minute_show">00分</span>
                </div>
                <div class="aui-sale-count-item">
                    <span id="second_show">00秒</span>
                </div>
            </div>
        </a>
    </div>
    <div class="aui-content-box">
        <div class="prev">
            <a href="javascript:void(0)">
                <img src="/static/images/prev.png" alt="">
            </a>
        </div>
        <div class="aui-content-box-ovf">
            <div class="aui-content-box-list">
                <ul>
                    <li>
                        <a href="/details/getDetails1?goodsId=24">
                            <div class="aui-content-item-img">
                               <img src="/static/goodsphotoes/西瓜.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">好吃的西瓜 销量有限 先买先优惠</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=29">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/AppleiPhoneXS.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">魅族 PRO 6 Plus 4GB+64GB 公开版 香槟金 移动联通4G手机 双卡双待</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=30">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/iPhoneXR.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">小米MIX2 全面屏游戏手机 8GB+128GB 全陶瓷尊享版 黑色 全网通4G手机 双卡双待</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=33">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/RedmiK20Pro.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">双面屏阅读大屏手机 4+64G黑色 4G全网通 双卡双待手机</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=19">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/葡萄.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">产自新疆的葡萄 日照充足 又大又甜</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=34">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/vivoX27.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">魅族 PRO 6 Plus 4GB+64GB 公开版 香槟金 移动联通4G手机 双卡双待</p>
                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=35">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/vivoZ5.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">小米MIX2 全面屏游戏手机 8GB+128GB 全陶瓷尊享版 黑色 全网通4G手机 双卡双待</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=1">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/荔枝.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">来自海南的荔枝 大而甜 回味无穷</p>

                        </a>
                    </li>
                    <li>
                        <a href="/details/getDetails1?goodsId=17">
                            <div class="aui-content-item-img">
                                <img src="/static/goodsphotoes/柠檬.jpg" alt="">
                            </div>
                            <p class="aui-content-item-name">好吃有健康的柠檬 虽然有点酸 但是很健康</p>

                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="next">
            <a href="javascript:void(0)">
                <img src="/static/images/next.png" alt="">
            </a>
        </div>
    </div>
    <div class="aui-small-ad">
        <div class="example2">
            <ul>
                <li>
                    <img src="/static/home/img/ad1.jpg" alt="2">
                </li>
                <li>
                    <img src="/static/home/img/ad2.jpg" alt="1">
                </li>
                <li>
                    <img src="/static/home/img/ad3.jpg" alt="3">
                </li>
            </ul>
            <ol>
                <li></li>
                <li></li>
                <li></li>
            </ol>
        </div>
    </div>
</div>

<a href="/home" style="margin-left:1500px;"><button type="button" class="layui-btn">返回</button></a>

<script type="text/javascript" src="/static/home/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/home/js/banner.js"></script>
<script type="text/javascript" src="/static/home/js/ad.js"></script>
<script type="text/javascript">


    //商品滚动
    $(function(){

        $(".next a").click(function(){ nextscroll() });

        function nextscroll(){

            var vcon = $(".aui-content-box-list ");

            var offset = ($(".aui-content-box-list li").width())*-1;

            vcon.stop().animate({left:offset},"slow",function(){

                var firstItem = $(".aui-content-box-list ul li").first();

                vcon.find("ul").append(firstItem);

                $(this).css("left","0px");

                circle()

            });

        };

        function circle(){

            var currentItem = $(".aui-content-box-list ul li").first();

            var currentIndex = currentItem.attr("index");

            $(".circle li").removeClass("circle-cur");

            $(".circle li").eq(currentIndex).addClass("circle-cur");

        }


        $(".prev a").click(function(){

            var vcon = $(".aui-content-box-list ");

            var offset = ($(".aui-content-box-list li").width()*-1);

            var lastItem = $(".aui-content-box-list ul li").last();

            vcon.find("ul").prepend(lastItem);

            vcon.css("left",offset);

            vcon.animate({left:"0px"},"slow",function(){

                circle()

            })

        });


    });

    var intDiff = parseInt(600000);//倒计时总秒数量

    function timer(intDiff){
        window.setInterval(function(){

            var day=0,

                hour=0,

                minute=0,

                second=0;//时间默认值

            if(intDiff > 0){

                day = Math.floor(intDiff / (60 * 60 * 24));

                hour = Math.floor(intDiff / (60 * 60)) - (day * 24);

                minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);

                second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);

            }

            if (minute <= 9) minute = '0' + minute;

            if (second <= 9) second = '0' + second;


            $('#hour_show').html('<s id="h"></s>'+hour+'时');

            $('#minute_show').html('<s></s>'+minute+'分');

            $('#second_show').html('<s></s>'+second+'秒');

            intDiff--;

        }, 1000);

    }


    $(function(){

        timer(intDiff);

    });

    //ad自动滚动
    $(function(){
        $(".example2").luara({width:"194",height:"275",interval:3500,selected:"seleted",deriction:"left"});

    });


</script>

</body>
</html>