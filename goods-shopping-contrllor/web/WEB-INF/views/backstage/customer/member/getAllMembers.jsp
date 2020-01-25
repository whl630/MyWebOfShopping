<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2020/1/25
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员视图</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        table{
            width:1100px;
            margin: auto;
            margin-top: 15px;
            border-top: 2px solid gray;
        }
        table tr{
            font-size: 24px;
            font-family: 华文新魏;
            height: 48px;
        }
        table,tr,td,th{
            border: 1px solid green;
        }

    </style>
</head>
<body>
    <div>
        <table>
            <tr>
                <th>会员编号</th>
                <th>顾客外键</th>
                <th>是否会员</th>
                <th>当前状态</th>
                <th>注册时间</th>
                <th>会员时长</th>
            </tr>
            <c:forEach items="${member}" var="member">
                <tr>
                    <td>${member.mid}</td>
                    <td>${member.aid}</td>
                    <td>
                        <c:if test="${member.ismember == 2}">
                            <button type="button" class="layui-btn layui-btn-warm">是</button>
                        </c:if>
                        <c:if test="${member.ismember == 1}">
                            <button type="button" class="layui-btn layui-btn-danger">否</button>
                        </c:if>
                    </td>
                    <td>${member.ismember}</td>
                    <td>${member.memberTime}</td>
                    <td>${member.expirationTime}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
