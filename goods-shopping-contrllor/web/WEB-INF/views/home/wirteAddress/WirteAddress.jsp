<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填写地址</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }
        body{
            background: url("/static/images/地址背景图.jpg") no-repeat center center;
            background-size:cover;
            background-attachment: fixed;
        }
        #adress{
            width: 600px;
            height: 500px;
            margin: auto;
            border: 1px solid ;
        }
        select{
            width: 200px;
            height: 30px;
        }
        input{
            width: 300px;
            height: 30px;
        }
    </style>
</head>
<body>
<div id="adress">
    <h1 style="font-size: 27px;color: #1b6d85">地址编辑</h1><br/>
    省:
    <select id="province" name="province">
        <option value="">--请选择一个省份--</option>
    </select>
    </label>
    <label>
        市:
        <select id="city" name="city">
            <option value="">--请选择一个城市--</option>
        </select>
    </label><br/>
    <label>
        详细地址:
        <input type="text" placeholder="请输入您所在的县或区">
    </label>
</div>

<input type="button" class="ignore" value="已有地址，直接跳过">


<script>
    var arr = ["安徽省","北京市","重庆市","福建省","甘肃省","广东省","广西壮族自治区","贵州省","海南省"," 河北省","河南省","黑龙江省","湖北省","湖南省","吉林省","江苏省"," 江西省","辽宁省","内蒙古自治区","宁夏回族自治区"," 青海省","山东省","山西省","陕西省","上海市","四川省","天津市","西藏自治区","新疆维吾尔族自治区","云南省","浙江省"];

    arr["安徽省"] = ["合肥市","芜湖市","蚌埠市","淮南市","马鞍山市","淮北市"]
    arr["福建省"] = ["福州市","厦门市","泉州市","龙岩市","漳州市","莆田市","三明市","宁德市"]
    arr["甘肃省"] = ["兰州市","嘉峪关市","金昌市","武威市","酒泉市","张掖市","平凉市","庆阳市"]
    arr["广东省"] = ["河源市", "珠海市", "广州市", "深圳市", "中山市", "湛江市", "东莞市", "汕头市", "佛山市", "肇庆市", "惠州市", "梅州市", "江门市", "韶关市", "茂名市", "汕尾市", "阳江市", "清远市", "潮州市", "揭阳市", "云浮市", "阳江市"];
    arr["广西壮族自治区"] = ["桂林市","南宁市","柳州市","梧州市","北海市","防城港市","钦州市","玉林市"]
    arr["贵州省"] = ["","","","","","","",""]
    arr["海南省"] = ["","","","","","","",""]
    arr["河北省"] = ["","","","","","","",""]
    arr["河南省"] = ["","","","","","","",""]
    arr["黑龙江省"] = ["","","","","","","",""]
    arr["湖北省"] = ["","","","","","","",""]
    arr["湖南省"] = ["","","","","","","",""]
    arr["吉林省"] = ["","","","","","","",""]
    arr["江苏省"] = ["","","","","","","",""]
    arr["江西省"] = ["南昌市","九江市","景德镇市","赣州市","上饶市","宜春市","吉安市","新余市","鹰潭市","萍乡市"]
    arr["辽宁省"] = ["","","","","","","",""]
    arr["内蒙古自治区"] = ["","","","","","","",""]
    arr["宁夏回族自治区"] = ["","","","","","","",""]
    arr["青海省"] = ["","","","","","","",""]
    arr["山东省"] = ["","","","","","","",""]
    arr["山西省"] = ["","","","","","","",""]
    arr["四川省"] = ["","","","","","","",""]
    arr["陕西省"] = ["","","","","","","",""]
    arr["西藏自治区"] = ["","","","","","","",""]
    arr["新疆维吾尔族自治区"] = ["","","","","","","",""]
    arr["云南省"] = ["","","","","","","",""]
    arr["浙江省"] = ["","","","","","","",""]


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
