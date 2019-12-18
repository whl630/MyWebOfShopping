<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>修改商品详情数据</title>
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/back.css">
</head>
<body>
    <div id="detailsDiv">
        <h1>商品管理-->商品详情数据添加</h1>
        <form method="post" action="${root}/back/updateDetails">
            <div>
                <span>信息编号：</span><input type="text" name="detailsId" value="${details.detailsId}" readonly="readonly"><br/>
            </div>
            <div>
                <span>保&nbsp;质&nbsp;&nbsp;期：</span><input type="text" name="detailsShelf" value="${details.detailsShelf}"><br/>
            </div>
            <div>
                <span>已售数量：</span><input type="text" name="detailsQuintity" value="${details.detailsQuintity}"><br/>
            </div>
            <div>
                <span>商品产地：</span><input type="text" name="detailsOrigin" value="${details.detailsOrigin}"><br/>
            </div>
            <div>
                <span>商品描述：</span> <input type="text" name="detailsDes" value="${details.detailsDes}"><br/>
            </div>
            <div>
                <span>商品编号：</span><input type="text" name="goodsId" value="${details.goodsId}" readonly="readonly"><br/>
            </div>
            <div>
                <span>生产日期：</span><input type="text" value="${details.detailsTime}"> <input type="date" name="detailsTime" >
            </div>

            <div>
                <input type="submit" id="subitDetails" value="提交" style="font-size: 25px;color: white;background-color: blueviolet">
            </div>
        </form>
    </div>
</body>
</html>
