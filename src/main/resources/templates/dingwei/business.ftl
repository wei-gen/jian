<!DOCTYPE html>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="/static/css/business.css">
</head>
<body>
<div>
    <div class="top">
        <div class="top_left">
<!--            <img width="70px" height="70px" src="../static/img/logo.jpg"/>-->
            <p>深圳市鼎维环保科技有限公司</p>
        </div>
        <div class="top_middle">
            <a href="/index">首页</a>
            <a href="/intro">公司简介</a>
            <a href="/business">项目公式</a>
<!--            <a href="/team">团队介绍</a>-->
            <a href="/contact">联系我们</a>
        </div>
        <div class="top_right">
            <img width="70px" height="70px" src="../static/img/tel.jpg"/>
            <p>15622202701</p>
        </div>
    </div>
    <div class="banner_box" style="background-image: url(../static/img/2020042109461011.jpg)"></div>
    <div class="content">
        <div class="content_1">
            <p class="content_11">项目案例</p>
            <div class="content_12">
                <#list list as row>
                    <div style="width: 95%;height: 50px;line-height: 50px;margin: auto;cursor:pointer;text-align: left">
                        <span style="width:10%;min-width:10%;padding-right: 50px">[项目公示]</span>
                        <a style="width:70%;min-width:70%;text-align: left;display: inline-block;" href="${base}/businessDetail/${row.id}">
                            ${row.title}
                        </a>
                        <span style="width:20%;min-width:20%;">${row.createTime}</span>
                    </div>
                </#list>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom_t">
            <a class="bottom_t_a" href="/index">首页</a>
            <a class="bottom_t_a" href="/intro">公司简介</a>
            <a class="bottom_t_a" href="/business">项目公示</a>
            <!--            <a class="bottom_t_a" href="/team">团队介绍</a>-->
            <a class="bottom_t_a" href="/contact">联系我们</a>
            <a class="bottom_t_c"><img src="../static/img/phone.png"/><p>15622202701</p></a>
        </div>
        <div class="bottom_b">
            ©版权所有 深圳市鼎维环保科技有限公司
            <p>粤ICP备2022060728号</p>
            <p>44031102000756</p>
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
                            <p class="red number">15622202701</p>
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