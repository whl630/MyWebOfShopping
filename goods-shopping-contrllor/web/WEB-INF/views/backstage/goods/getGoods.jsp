<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table class="table table-condensed table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>选择</th>
        <th>编号</th>
        <th>商品名称</th>
        <th>商品价格</th>
        <th>会员价格</th>
        <th>库存数量</th>
        <th>类型编号</th>
        <th>图片地址</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="tbody">
    <c:forEach items="${good.list}" var="goods">
        <tr data-id="${goods.goodsId}">
            <td><input type="checkbox" id="checkbox" style="width: 25px;height: 25px"></td>
            <td>${goods.goodsId}</td>
            <td>${goods.goodsName}</td>
            <td>${goods.goodsPrice}</td>
            <td>${goods.disPrice}</td>
            <td>${goods.intotal}</td>
            <td>${goods.categoryId}</td>
            <td><img src="static/goodsphotoes/${goods.imgurl}" width="40px" height="40px"></td>
            <td>
                <a class="del"><i class="fa fa-trash fa-2x" aria-hidden="true" id="delete"></i></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${root}/update?goodsId=${goods.goodsId}" class="update"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="page">
    <button value="1" class="my_li" id="id">首页</button>
    <button value="${good.prePage}" class="my_li">上一页</button>
    <c:forEach items="${good.navigatepageNums}" var="num">
        <button value="${num}" class="my_li">${num}</button>
    </c:forEach>
    <button value="${good.nextPage}" class="my_li">下一页</button>
    <button value="${good.pages}" class="my_li">尾页</button><span>&nbsp;&nbsp;共${good.pages}页</span>
</div>
<script>
    function loadTables() {
        $.ajax({
            method: "GET",
            url: "${root}/listGoods",
            data: {
                pageNum:$(this).val()
            }
        }).done(function (res) {
            $("#listDiv").html(res);
        })
    }
    //删除
    function getDelete(){
        if (window.confirm("是否确定删除？")){
            $.ajax({
                method:"GET",
                url:"${root}/deleteGood",
                data:{
                    goodsId:$(this).closest("tr").attr("data-id")
                }
            }).done(function (res) {
                if(res === "成功") {
                    window.location.href = "/listGood";
                } else {
                    window.location.href = "/listGood";
                }
            }).fail(function () {
                alert("删除失败！")
            })
        }
    }

    //模糊查询
    function getGoodsByGoodsName() {
        $.ajax({
            method: "GET",
            url: "${root}/getGoodsByGoodsName",
            data:{
                goodsName:$("#searchtext").val()
            },
            success:function (data) {
                alert("正在查询！");
                var str = "<table class='table table-condensed table-striped table-bordered table-hover'>";
                data.forEach(function(i){
                    str += "<tr data-id='"+i.goodsId+"'><td>"+"<input type='checkbox' id='checkbox' style='width: 25px;height: 25px'>"
                        +"</td><td>"+i.goodsId
                        +"</td><td>"+i.goodsName
                        +"</td><td>"+i.goodsPrice
                        +"</td><td>"+i.disPrice
                        +"</td><td>"+i.intotal
                        +"</td><td>"+i.categoryId
                        +"</td><td>"+"<img src='static/goodsphotoes/"
                        +i.imgurl+" 'width='40px' height='40px'> "
                        +"</td><td>"+"<a class='del'><i class='fa fa-trash fa-2x' aria-hidden='true' id='delete'></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                        +"<a href='${root}/update?goodsId="+i.goodsId+"'class='update'><i class='fa fa-pencil-square-o fa-2x' aria-hidden='true'></i></a>"
                        +"</td></tr>";
                })
                str += "</table>"
                $("#listDiv").html(str);
            }
        });
    }
    $(function() {
        $("#page").on("click",".my_li",loadTables);
        $("table").on("click",".del",getDelete);
        $("#searchbutton").click(function () {
            getGoodsByGoodsName();
        })
    })
</script>
