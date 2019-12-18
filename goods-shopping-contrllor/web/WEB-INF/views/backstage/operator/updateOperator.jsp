<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/18
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工升职降职</title>
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/back.css">
</head>
<body>
<div id="operatorDiv">
    <h1>用户管理-->管理员职位调动</h1>
    <form method="post" action="#">
        <div>
            <span>姓名：</span><input type="text" name="operatorUsername" value="${operator.operatorUsername}" readonly="readonly"><br/>
        </div>

        <div>
            <span>账号：</span><input type="text" name="operatorAccount" value="${operator.operatorAccount}" readonly="readonly"><br/>
        </div>
        <div>
            <span>本人头像：</span><input type="text" name="operatorPicture" value="${operator.operatorPicture}" readonly="readonly"><br/>
        </div>
        <div>
            <span>职位：</span>
                <select name="operatorId">
                    <option value="0">请选择职位</option>
                    <c:forEach items="${operatorType}" var="t">
                        <option value="${t.oTypeId}"> ${t.oTypeName}</option>
                    </c:forEach>
                </select>
        </div>
        <div>
            <input type="submit" id="subitDetails" value="提交" style="font-size: 25px;color: white;background-color: blueviolet">
        </div>
    </form>
</div>
</body>
</html>
