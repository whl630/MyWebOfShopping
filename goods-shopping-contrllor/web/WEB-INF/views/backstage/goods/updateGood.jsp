<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品修改页面</title>
    <link rel="stylesheet" type="text/css" href="static/backgood/goodstyle.css">
    <script src="/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>
        <div id="id">
            <h2 align="center">商品管理-->修改商品</h2>
            <form enctype="multipart/form-data" action="${root}/updateGood" method="post">
                <div>
                    商品编号：  <input type="text" name="goodsId" value="${g.goodsId}" readonly="readonly"><br/>
                </div>
                <div>
                    商品名称：  <input type="text" name="goodsName" value="${g.goodsName}"><br/>
                </div>
                <div>
                    商品价格： <input type="text" name="goodsPrice" value="${g.goodsPrice}"><br/>
                </div>
                <div>
                    会员价格： <input type="text" name="disPrice" value="${g.disPrice}"><br/>
                </div>
                <div>
                    库存数量： <input type="text" name="intotal" value="${g.intotal}"><br/>
                </div>
                <div>
                    商品类型：<select name="categoryId">
                                   <option value="0">请选择商品类型</option>
                                   <c:forEach items="${type}" var="type">
                                       <option value="${type.categoryId}"> ${type.category}</option>
                                   </c:forEach>
                             </select>
                </div>
                <div class="div1">
                    商品图片： <input type="file" name="photo" >
                </div>
                <div class="div2">
                    <img src="/static/goodsphotoes/${g.imgurl}" width="50px" height="50px">
                </div>
                <div>
                    <input  type="submit" value="修改">
                </div>
            </form>
        </div>

        <a href="/listGood">返回</a>
</body>
</html>
