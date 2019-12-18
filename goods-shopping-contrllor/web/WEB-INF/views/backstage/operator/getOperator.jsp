<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<style>
    .table{
        width: 1000px;
        height: 400px;
        border: 1px solid darkgreen;
        margin-left: 20px;
    }
    .table tr,td{
        border: 1px solid darkgreen;
    }
</style>
    <table class="table">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>账号</th>
            <th>密码</th>
            <th>入职时间</th>
            <th>本人头像</th>
            <th>职位</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${operator}" var="operator">
            <tr>
                <td>${operator.operatorId}</td>
                <td>${operator.operatorUsername}</td>
                <td>${operator.operatorAccount}</td>
                <td>${operator.operatorPassword}</td>
                <td>${operator.operatorTime}</td>
                <td><img src="/static/images/${operator.operatorPicture}" style="width: 60px;height: 60px"></td>
                <td>${operator.operatorTypeId}</td>
                <td><a href="${root}/operator/updateOperator?operatorId=${operator.operatorId}"><button type="button" class="layui-btn layui-btn-warm">调职</button></a></td>
            </tr>
        </c:forEach>
    </table>


