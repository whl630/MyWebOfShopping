<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/13
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品类型</title>
    <link rel="stylesheet" type="text/css" href="static/backgood/goodstyle.css">
</head>
<body>
<div id="id">
    <h2 align="center">商品管理-->添加商品类型</h2>
    <form method="POST" action="${root}/insertGoodType">
        <div>
            商品类型名称：  <input type="text" name="Category"><br/>
        </div>
        <div>
            <input type="submit" value="提交">
        </div>
    </form>
    <a href="/getGoodsType">返回</a>
</div>

</body>
</html>
