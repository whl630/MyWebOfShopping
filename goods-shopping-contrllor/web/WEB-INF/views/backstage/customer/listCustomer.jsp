<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <script src="/static/js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="/static/js/zoomsl.min.js" type="text/javascript"></script>
</head>
<body>
    <div>
        <img class="demo1" src="/static/images/张三.jpg" style="width: 300px;height: 480px">
        <script>
            jQuery(function(){
                $('.demo1').imagezoomsl({
                    //放大倍数
                    zoomrange: [3, 3]
                });
            });
        </script>

    </div>
</body>
</html>
