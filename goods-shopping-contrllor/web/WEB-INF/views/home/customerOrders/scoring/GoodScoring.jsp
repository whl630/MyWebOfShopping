<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品评分</title>
    <link type="text/css" href="/static/js/style.css" rel="stylesheet" />
</head>
<body>
<div class="order-evaluation clearfix">
    <h1 style="color: green;font-family: 华文新魏;">给本商品的评价</h1>
    <p style="color: grey;font-weight: bold;font-size: 18px;">请严肃认真对待此次评价哦！您的评价对我们真的真的非常重要！</p>
    <div class="block">
        <ul>
            <li data-default-index="0">
				<span>
					<img src="/static/img/x1.png" style="width: 42px;height: 42px">
					<img src="/static/img/x1.png" style="width: 42px;height: 42px">
                    <img src="/static/img/x1.png" style="width: 42px;height: 42px">
                    <img src="/static/img/x1.png" style="width: 42px;height: 42px">
                    <img src="/static/img/x1.png" style="width: 42px;height: 42px">
				</span>
                <em class="level"></em>
            </li>
        </ul>
    </div>
    <div class="order-evaluation-text">
        本次交易，乖，摸摸头 给您留下了什么印象呢？
    </div>
    <div class="order-evaluation-checkbox">
        <ul class="clearfix">
            <li class="order-evaluation-check" data-impression="1">专业水平高<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="2">交付准时<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="3">效果明显<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="4">数据分析准确<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="5">能力待提高<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="6">工期延误<i class="iconfont icon-checked"></i></li>
            <li class="order-evaluation-check" data-impression="7">实物与图片有出入<i class="iconfont icon-checked"></i></li>
        </ul>
    </div>
    <div class="order-evaluation-textarea">
        <textarea name="content" id="TextArea1" onKeyUp="words_deal();" style="font-size: 21px;"></textarea>
        <span>还可以输入<em id="textCount">140</em>个字</span>
    </div>

    <a href="javascript:;" id="order_evaluation">评价完成</a>
    <a href="javascript:;" id="order_getBack" style="margin-right: 16px;">返回</a>
    <a href="javascript:;" id="order_commentary" style="margin-right: 16px;">前往评论</a>
</div>

<div id="order_evaluate_modal" class="dmlei_tishi_info"></div>


<script type="text/javascript" src="/static/js/jquery.js"></script>
<script type="text/javascript">
    /*
     * 根据index获取 str
     * **/
    function byIndexLeve(index){
        var str ="";
        switch (index)
        {
            case 0:
                str="差评";
                break;
            case 1:
                str="较差";
                break;
            case 2:
                str="中等";
                break;
            case 3:
                str="一般";
                break;
            case 4:
                str="好评";
                break;
        }
        return str;
    }
    //  星星数量
    var stars = [
        ['x2.png', 'x1.png', 'x1.png', 'x1.png', 'x1.png'],
        ['x2.png', 'x2.png', 'x1.png', 'x1.png', 'x1.png'],
        ['x2.png', 'x2.png', 'x2.png', 'x1.png', 'x1.png'],
        ['x2.png', 'x2.png', 'x2.png', 'x2.png', 'x1.png'],
        ['x2.png', 'x2.png', 'x2.png', 'x2.png', 'x2.png'],
    ];
    $(".block li").find("img").hover(function(e) {
        var obj = $(this);
        var index = obj.index();
        if(index < (parseInt($(".block li").attr("data-default-index")) -1)){
            return ;
        }
        var li = obj.closest("li");
        var star_area_index = li.index();
        for (var i = 0; i < 5; i++) {
            li.find("img").eq(i).attr("src", "/static/img/" + stars[index][i]);//切换每个星星
        }
        $(".level").html(byIndexLeve(index));
    }, function() {
    })

    $(".block li").hover(function(e) {
    }, function() {
        var index = $(this).attr("data-default-index");//点击后的索引
        index = parseInt(index);
        console.log("index",index);
        $(".level").html(byIndexLeve(index-1));
        console.log(byIndexLeve(index-1));
        $(".order-evaluation ul li:eq(0)").find("img").attr("src","/static/img/x1.png");
        for (var i=0;i<index;i++){

            $(".order-evaluation ul li:eq(0)").find("img").eq(i).attr("src","/static/img/x2.png");
        }
    })
    $(".block li").find("img").click(function() {
        var obj = $(this);
        var li = obj.closest("li");
        var star_area_index = li.index();
        var index1 = obj.index();
        li.attr("data-default-index", (parseInt(index1)+1));
        var index = $(".block li").attr("data-default-index");//点击后的索引
        index = parseInt(index);
        console.log("index",index);
        $(".level").html(byIndexLeve(index-1));
        console.log(byIndexLeve(index-1));
        $(".order-evaluation ul li:eq(0)").find("img").attr("src","/static/img/x1.png");
        for (var i=0;i<index;i++){
            $(".order-evaluation ul li:eq(0)").find("img").eq(i).attr("src","/static/img/x2.png");
        }

    });
    //印象
    $(".order-evaluation-check").click(function(){
        if($(this).hasClass('checked')){
            //当前为选中状态，需要取消
            $(this).removeClass('checked');
        }else{
            //当前未选中，需要增加选中
            $(this).addClass('checked');
        }
    });
    //评价字数限制
    function words_deal()
    {
        var curLength=$("#TextArea1").val().length;
        if(curLength>140)
        {
            var num=$("#TextArea1").val().substr(0,140);
            $("#TextArea1").val(num);
            alert("超过字数限制，多出的字将被截断！" );
        }
        else
        {
            $("#textCount").text(140-$("#TextArea1").val().length);
        }
    }
    $("#order_evaluation").click(function(){
        $("#order_evaluate_modal").html("感谢您的评价！么么哒(* ￣3)(ε￣ *)").show().delay(3000).hide(500);
    })
    $("#order_getBack").click(function(){
        $("#order_evaluate_modal").html("正在返回").show().delay(3000).hide(500);
    })
</script>
</body>
</html>
