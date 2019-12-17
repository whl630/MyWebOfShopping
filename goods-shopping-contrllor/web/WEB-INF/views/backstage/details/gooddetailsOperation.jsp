<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script src="/static/js/jquery.js"></script>
</head>
<body>
    <div id="listDiv">

    </div>

    <script>
        //查询
        function loadTable() {
            $.ajax({
                method: "GET",
                url: "${root}/back/getAllGoodsDetails"
            }).done(function (res) {
                $("#listDiv").html(res);
            })
        }
        $(function () {
            loadTable();
        });
    </script>
</body>
</html>
