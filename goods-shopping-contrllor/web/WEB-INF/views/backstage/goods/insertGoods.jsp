<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品添加页面</title>
    <link rel="stylesheet" type="text/css" href="static/backgood/goodstyle.css">
</head>
<body>
<div id="id">
    <h2 align="center">商品管理-->添加商品</h2>
    <form method="post" action="${root}/insertGood" enctype="multipart/form-data" >
        <div>
            商品名称：  <input type="text" name="goodsName"><br/>
        </div>
        <div>
            商品价格： <input type="text" name="goodsPrice"><br/>
        </div>
        <div>
            会员价格： <input type="text" name="disPrice"><br/>
        </div>
        <div>
            库存数量： <input type="text" name="intotal"><br/>
        </div>
        <div>
            商品类型：
            <select name="categoryId">
                <option value="0">请选择商品类型</option>
                <c:forEach items="${type}" var="type">
                    <option value="${type.categoryId}"> ${type.category}</option>
                </c:forEach>
            </select>
        </div>
        <div>
            商品图片： <input type="file" name="imgurl">
        </div>
        <div>
            <input type="submit" value="SUBMIT">
        </div>
    </form>
</div>

</body>
</html>
