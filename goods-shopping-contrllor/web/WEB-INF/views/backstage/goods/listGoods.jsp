<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" scope="page" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>商品信息界面</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/backsageHome/layout.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script src="/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div>
    <h1>商品信息</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="#" class="insert"><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"></i></a>
    <div id="listDiv">

    </div>
</div>

<script>
    function loadTable() {
        $.ajax({
            method:"GET",
            url:"${root}/listGoods"
        }).done(function (res) {
            $("#listDiv").html(res);
        });
    }
    //删除
    function getDelete(){
        $(".del").click(function () {
            jQuery.messager.confirm('提示:','你确认要删除吗?',function(event){
                if(event){
                    alert("准备删除！");
                    $.get("${root}/deleteGood?id=" + $(this).closest("tr").attr("data-id"), function (res) {
                        e.preventDefault();
                        loadTable();
                    });
                }
            });
        })
    }
    //修改
    function getUpdate() {
        $(".update").click(function () {
            $.ajax({
                method: "GET",
                url: "${root}/update"
            }).done(function () {
                alert("准备修改！")
            })
        })
    }
    //添加
    function getInsert() {
        $(".insert").click(function () {
            $.ajax({
                method: "GET",
                url: "${root}/insert"
            }).done(function () {
                alert("准备添加！")
            })
        })
    }
    $(function () {
        loadTable();
        getDelete();
        getInsert();
        getUpdate();
    })
</script>
</body>
</html>
