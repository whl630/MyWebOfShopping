<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: looki
  Date: 2019/12/27
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <c:forEach items="${name}" var="good">
        <a style="text-decoration: none;font-size: 26px;color: blue" href="/details/getDetails2?goodsId=${good.goodsId}">&nbsp;&nbsp;${good.goodsName}&nbsp;&nbsp;&nbsp;&nbsp;</a>
    </c:forEach>


