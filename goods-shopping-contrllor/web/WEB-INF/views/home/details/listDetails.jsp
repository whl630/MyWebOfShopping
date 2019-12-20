<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<img src="/static/goodsphotoes/${photo.imgurl}" class="ph">

<script>
    // 图片放大特效
    jQuery(function(){
        $('.ph').imagezoomsl({
            zoomrange: [3, 3]
        });
    });
</script>