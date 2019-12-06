<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品修改页面</title>
    <link rel="stylesheet" type="text/css" href="static/backgood/goodstyle.css">
</head>
<body>
        <div id="id">
            <form enctype="multipart/form-data" action="/insertGood">
                <div>
                    商品名：  <input type="text"><br/>
                </div>
                <div>
                    商品价格： <input type="text"><br/>
                </div>
                <div>
                    会员价： <input type="text"><br/>
                </div>
                <div>
                    库存： <input type="text"><br/>
                </div>
                <div>
                    商品类型：<select name="categoryId">
                                   <option value="0">请选择商品类型</option>
                                   <c:forEach items="${type}" var="type">
                                       <option value="${type.categoryId}"> ${type.category}</option>
                                   </c:forEach>
                             </select>
                </div>
                <div>
                    商品图片： <input type="file" name="myfile">
                </div>
                <div>
                    <input type="submit">
                </div>
            </form>
        </div>

</body>
</html>
