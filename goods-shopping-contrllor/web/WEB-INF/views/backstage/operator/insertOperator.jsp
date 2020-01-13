<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>招募管理员</title>
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/operator.css">
    <link rel="stylesheet" type="text/css" href="/static/layui-v2.5.4/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/globle.css">
    <script src="/static/backsageHome/layui.js" charset="utf-8"></script>
    <style>
        #operatorDiv{
            width: 640px;
            height: 540px;
            border: 1px solid blue;
            margin-left: 250px;
            box-shadow: 0px 10px 5px blue;
            margin-top: 25px;
        }
        #operatorDiv input{
            margin-left: 6px;
            margin-bottom: 10px;
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
    <h1>用户管理-->招募管理员</h1>
    <form method="post" action="${root}/operator/operatorAdd" enctype="multipart/form-data" >
        <div>
            <span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span><input type="text" name="operatorUsername"><br/>
        </div>

        <div>
            <span>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</span><input type="text" name="operatorAccount"><br/>
        </div>

        <div>
            <span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="text" name="operatorPassword"><br/>
        </div>

        <div>
            <span>入职时间：</span><input type="date" name="operatorTime"><br/>
        </div>

        <div>
            <span>本人头像：</span>
            <input type="file" name="picture">
        </div>
        <div>
            <span>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</span>
            <select name="operatorTypeId">
                <option value="0">请选择职位</option>
                <c:forEach items="${operatorType}" var="t">
                    <option value="${t.oTypeId}"> ${t.oTypeName}</option>
                </c:forEach>
            </select>
        </div>
        <div>
            <input type="submit" class="subitDetails" value="提交" style="font-size: 25px;color: white;background-color: blueviolet;margin-left: 120px">
        </div>
    </form>
</div>
<a href="/operator/list"><button type="button" class="layui-btn layui-btn-normal" style="margin-top: 15px;margin-left: 720px">返回</button></a>
</body>
</html>
