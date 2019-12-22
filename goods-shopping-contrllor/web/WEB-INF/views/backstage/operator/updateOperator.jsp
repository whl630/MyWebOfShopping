<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
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
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/operator.css">
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        #operatorDiv{
            width: 800px;
            height: 600px;
            border: 1px solid blue;
            margin-left: 50px;
            box-shadow: 0px 10px 5px blue;
            margin-top: 5px;
        }
        #operatorDiv input{
            margin-left: 6px;
        }
        #operatorDiv span{
            margin-left: 72px;
        }
        h1{
            font-size: 36px;
            font-family: 华文新魏;
            color: #1d7db1;
        }
        select{
            width: 270px;
            height: 36px;
            font-size: 27px;
        }
    </style>
</head>
<body>
<div id="operatorDiv">
    <h1>用户管理-->管理员职位调动</h1>
    <form method="post" action="${root}/operator/update">
        <div>
            <span>编号：</span><input type="text" name="operatorId" value="${operator.operatorId}" readonly="readonly"><br/>
        </div>
        <div>
            <span>姓名：</span><input type="text" name="operatorUsername" value="${operator.operatorUsername}" readonly="readonly"><br/>
        </div>

        <div>
            <span>账号：</span><input type="text" name="operatorAccount" value="${operator.operatorAccount}" readonly="readonly"><br/>
        </div>
        <div>
            <span>本人头像：</span>
            <img src="/static/images/${operator.operatorPicture}" class="layui-nav-img" style="width: 240px;height: 300px">
        </div>
        <div>
            <span>职位：</span>
                <select name="operatorTypeId">
                    <option value="0">请选择职位</option>
                    <c:forEach items="${operatorType}" var="t">
                        <option value="${t.oTypeId}"> ${t.oTypeName}</option>
                    </c:forEach>
                </select>
        </div>
        <div>
            <input type="submit" id="subitDetails" value="提交" style="font-size: 25px;color: white;background-color: blueviolet;margin-left: 120px">
        </div>
    </form>
</div>
    <a href="/operator/list"><button type="button" class="layui-btn layui-btn-normal" style="margin-top: 15px;margin-left: 860px">返回</button></a>
</body>
</html>
