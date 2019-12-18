<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script src="static/js/jquery.js"></script>
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!-- main -->
<div class="main-w3layouts wrapper">
    <div class="main-agileinfo">
        <div class="agileits-top">
            <form action="/getLogin" method="post" id="form">
                <h1 style="color: white;font-family: 华文新魏;font-size: 24px" align="center">游客登录</h1>
                <input class="text" type="text" name="account" placeholder="账号" required="" id="account">
                <input class="text" type="password" name="password" placeholder="密码" required="" id="password">
                <div class="wthree-text">
                    <ul>
                        <li>
                            <label class="anim">
                                <input type="checkbox" class="checkbox" required="">
                                <span> 记住 ?</span>
                            </label>
                        </li>
                        <li><a href="#">忘记密码 ?</a> </li>
                    </ul>
                    <div class="clear"> </div>
                </div>
                <input type="submit" value="登录" id="submit">
            </form>
            <p>还没有账号? <a href="/slign"> 立即注册!</a></p>
        </div>
    </div>
    <!-- copyright -->
    <div class="w3copyright-agile">
        <p>© 2019 林式网上购物商城</p>
    </div>
    <!-- //copyright -->
    <ul class="w3lsg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
<!-- //main -->
<script>
    // $("#submit").click(function(){
    //     $("#form").submit();
    // });

    function TiJiao(){
        $.ajax({
            method:"POST",
            url:"/getLogin",
            data:{
                account: $("#account").val(),
                password: $("#password").val()
            }
        })
    }
    $(function () {
        $(document).on('click','#submit',TiJiao).success(function (res) {
            window.location.href="/home"
            alert(res);
        }).fail(function (res) {
            window.location.href="/login"
            alert(res);
        })
    })
</script>
</body>
</html>
