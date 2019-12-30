
$(function () {
    $(document).on("click","#f1",function () {
        $.ajax({
            method:"GET",
            url:"/goodsName/listName",
            data:{
                categoryId:1
            }
        }).done(function (date) {
            $("d2").html(res)
        })
    });
    $(document).on("click","#f2",function () {
        $.ajax({
            method:"GET",
            url:"/goodsName/listName",
            data:{
                categoryId:2
            }
        }).done(function (date) {
            $("d3").html(res)
        })
    });
})