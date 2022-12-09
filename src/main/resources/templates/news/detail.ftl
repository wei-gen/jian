<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${base}/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/layui/css/layui.css">
    <script src="http://common.cnblogs.com/script/jquery.js" type="text/javascript"></script>
    <script src="${base}/static/layui/layui.js"></script>
    <title>${company}</title>
</head>
<style>

</style>
<body>
<div>
    <div class="top">
        <div class="top_left">
            <p>${company}</p>
        </div>
        <div class="top_middle">
            <a href="/index">首页</a>
            <a href="/intro">公司简介</a>
            <a href="/business">项目公示</a>
            <a href="/contact">联系我们</a>
        </div>
        <div class="top_right">
            <img width="70px" height="70px" src="${base}/static/img/tel.jpg"/>
            <p>${phone}</p>
        </div>
    </div>
    <div class="banner_box1 layui-carousel" id="test1">
        <div carousel-item="">
            <div style="background-image: url(${base}/static/img/2020042109440615.jpg)">
            </div>
            <div style="background-image: url(${base}/static/img/2020042109442635.jpg)">
            </div>
        </div>
    </div>

    <div style="width:1200px;margin:0 auto 40px auto;padding: 40px 0 0 0;">
        ${bean.content}
    </div>


    <div class="bottom">
        <div class="bottom_t">
            <a class="bottom_t_a" href="${base}/index">首页</a>
            <a class="bottom_t_a" href="${base}/intro">公司简介</a>
            <a class="bottom_t_a" href="${base}/business">项目公示</a>
            <a class="bottom_t_a" href="${base}/contact">联系我们</a>
            <a class="bottom_t_c"><img src="${base}/static/img/phone.png"/><p>${phone}</p></a>
        </div>
        <div class="bottom_b">
            ©版权所有 ${company}
            <p>${icp1}</p>
            <p>${icp2}</p>
        </div>
    </div>
    <div class="suspension">
        <div class="suspension-box">
            <a href="javascript:" class="a a-service-phone" onmouseover="over1()"
                onmouseout="out1()">
                <i class="i"></i>
                <span>联系方式</span>
            </a>
            <a href="javascript:" class="a a-qrcode" onmouseover="over2()"
               onmouseout="out2()">
                <i class="i"></i>
                <span>微信</span>
            </a>

            <div id="d-service-phone" class="d d-service-phone" style="display: none;">
                <i class="arrow"></i>
                <div class="inner-box">
                    <div class="d-service-item clearfix">
                        <span class="circle">
                            <i class="i-tel"></i>
                        </span>
                        <div class="text">
                            <p>服务热线</p>
                            <p class="red number">${phone}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="d-qrcode" class="d d-qrcode" style="display: none;">
                <i class="arrow"></i>
                <div class="inner-box">
<#--                    <div class="qrcode-img"><img src="/skin/images/code.jpg"></div>-->
<#--                    <p>扫一扫，关注我们</p>-->
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    layui.use(['layer','carousel'],function(){
        var carousel = layui.carousel;
        carousel.render({
            elem: '#test1'
            ,width: '1200px' //设置容器宽度
            ,height: '400px'
            ,arrow: 'always' //始终显
        });
    });

    function over1(){
        let el = document.getElementById("d-service-phone");
        el.style.display = 'block';
    }
    function out1(){
        let el = document.getElementById("d-service-phone");
        el.style.display = 'none';
    }

    function over2(){
        let el = document.getElementById("d-qrcode");
        el.style.display = 'block';
    }
    function out2(){
        let el = document.getElementById("d-qrcode");
        el.style.display = 'none';
    }

</script>

</html>