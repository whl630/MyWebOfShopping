<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填写地址</title>
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>

    <link href="/static/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
<%--    <link href="/static/css/personal.css" rel="stylesheet" type="text/css">--%>
    <link href="/static/css/addstyle.css" rel="stylesheet" type="text/css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
    <style>
        body{
            background: url("/static/images/地址背景图.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
        #adress{
            width: 96%;
            margin: auto;
            height: 720px;
            border: 1px solid cornflowerblue;
            box-shadow: 0px 10px 5px blue;
            margin-top: 25px;
        }
        span{
            font-size: 15px;
            font-weight: bold;
            color: black;
        }
        select{
            width: 180px;
            height: 30px;
        }
        input{
            width: 270px;
            height: 30px;
        }
    </style>
</head>
    <body>
    <div id="adress">
        <div class="center">
            <div class="col-main">
                <div class="main-wrap">
                    <div class="user-address">
                        <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                        <div class="am-modal am-modal-no-btn" id="doc-modal-1">
                            <div class="add-dress">
                                <div class="am-cf am-padding">
                                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
                                </div>
                                <hr />
                                <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                                    <form class="am-form am-form-horizontal" method="post" action="/buy/addAdress">
                                        <div class="am-form-group">
                                            <label  class="am-form-label">收货人</label>
                                            <div class="am-form-content">
                                                <input type="text" id="user-name" name="consignee" placeholder="收货人">
                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label class="am-form-label">手机号码</label>
                                            <div class="am-form-content">
                                                <input id="user-phone" name="customerPhone" placeholder="手机号必填" type="email">
                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label class="am-form-label">所在地</label>
                                            <div class="am-form-content address">

                                                <select data-am-selected  id="province" name="province">
                                                    <option value="">--请选择一个省份--</option>
                                                </select>

                                                <select data-am-selected id="city" name="city">
                                                    <option value="">--请选择一个市--</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label class="am-form-label">详细地址</label>
                                            <div class="am-form-content">
                                                <textarea class="" rows="3" id="user-intro" name="address" placeholder="输入详细地址"></textarea>
                                                <small>100字以内写出你的详细地址...</small>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <a class="am-btn am-btn-danger">保存</a>
                                                <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                             </div>
                         </div>
                     </div>
                 </div>
            </div>
        </div>
        <a href="/listGoodsByPage"><button type="button" class="layui-btn layui-btn-normal" style="margin-top: 25px;margin-left: 500px">返回</button></a>
    </div>

                <script type="text/javascript">
                    $(document).ready(function() {
                        $(".new-option-r").click(function() {
                            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                        });

                        var $ww = $(window).width();
                        if($ww>640) {
                            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                        }

                    })

                    var arr = ["安徽省","北京市","重庆市","福建省","甘肃省","广东省","广西壮族自治区","贵州省","海南省"," 河北省","河南省","黑龙江省","湖北省","湖南省","吉林省","江苏省"," 江西省","辽宁省","内蒙古自治区","宁夏回族自治区"," 青海省","山东省","山西省","陕西省","上海市","四川省","天津市","西藏自治区","新疆维吾尔族自治区","云南省","浙江省"];

                    arr["安徽省"] = ["合肥市","芜湖市","蚌埠市","淮南市","马鞍山市","淮北市"];
                    arr["福建省"] = ["福州市","厦门市","泉州市","龙岩市","漳州市","莆田市","三明市","宁德市"];
                    arr["甘肃省"] = ["兰州市","嘉峪关市","金昌市","武威市","酒泉市","张掖市","平凉市","庆阳市"];
                    arr["广东省"] = ["河源市", "珠海市", "广州市", "深圳市", "中山市", "湛江市", "东莞市", "汕头市", "佛山市", "肇庆市", "惠州市", "梅州市", "江门市", "韶关市", "茂名市", "汕尾市", "阳江市", "清远市", "潮州市", "揭阳市", "云浮市", "阳江市"];
                    arr["广西壮族自治区"] = ["桂林市","南宁市","柳州市","梧州市","北海市","防城港市","钦州市","玉林市"];
                    arr["贵州省"] = ["","","","","","","",""];
                    arr["海南省"] = ["","","","","","","",""];
                    arr["河北省"] = ["","","","","","","",""];
                    arr["河南省"] = ["","","","","","","",""];
                    arr["黑龙江省"] = ["","","","","","","",""];
                    arr["湖北省"] = ["","","","","","","",""];
                    arr["湖南省"] = ["","","","","","","",""];
                    arr["吉林省"] = ["","","","","","","",""];
                    arr["江苏省"] = ["","","","","","","",""];
                    arr["江西省"] = ["南昌市","九江市","景德镇市","赣州市","上饶市","宜春市","吉安市","新余市","鹰潭市","萍乡市"];
                    arr["辽宁省"] = ["","","","","","","",""];
                    arr["内蒙古自治区"] = ["","","","","","","",""];
                    arr["宁夏回族自治区"] = ["","","","","","","",""];
                    arr["青海省"] = ["","","","","","","",""];
                    arr["山东省"] = ["","","","","","","",""];
                    arr["山西省"] = ["","","","","","","",""];
                    arr["四川省"] = ["","","","","","","",""];
                    arr["陕西省"] = ["","","","","","","",""];
                    arr["西藏自治区"] = ["","","","","","","",""];
                    arr["新疆维吾尔族自治区"] = ["","","","","","","",""];
                    arr["云南省"] = ["","","","","","","",""];
                    arr["浙江省"] = ["","","","","","","",""];


                    //获取省份下拉框
                    var proSelect = document.getElementById("province");
                    for (var i = 0; i < arr.length; i++) {
                        var pro = arr[i];
                        proSelect.options.add(new Option(pro, pro));
                    }
                    proSelect.onchange = function () {
                        var city = document.getElementById("city");

                        for (var i = city.options.length - 1; i >= 1; i--) {
                            city.options.remove(i);
                        }
                        var pro = proSelect.value;
                        if (pro != "") {
                            for (var i = 0; i < arr[pro].length; i++) {
                                city.options.add(new Option(arr[pro][i], arr[pro][i]));
                            }
                        }
                    };
                </script>
    </body>
</html>
