<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${base}/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/layui/css/layui.css">
    <script src="http://common.cnblogs.com/script/jquery.js" type="text/javascript"></script>
    <script src="${base}/static/layui/layui.js"></script>
</head>
<style>

</style>
<body>
<div>
    <div class="top">
        <div class="top_left">
<!--            <img width="70px" height="70px" src="../static/img/logo.jpg"/>-->
            <p>深圳图南环保技术有限公司</p>
        </div>
        <div class="top_middle">
            <a href="/index">首页</a>
            <a href="/intro">公司简介</a>
            <a href="/business">项目公示</a>
<!--            <a href="/team">团队介绍</a>-->
            <a href="/contact">联系我们</a>
        </div>
        <div class="top_right">
            <img width="70px" height="70px" src="../static/img/tel.jpg"/>
            <p>13553992423</p>
        </div>
    </div>
    <div class="banner_box1 layui-carousel" id="test1">
        <div carousel-item="">
            <div style="background-image: url(../static/img/2020042109440615.jpg)">
<!--                <img width="70px" height="70px" src="../static/img/2020042109440615.jpg"/>-->
            </div>
            <div style="background-image: url(../static/img/2020042109442635.jpg)">
<!--                <img width="70px" height="70px" src="../static/img/2020042109442635.jpg"/>-->
            </div>
        </div>
    </div>
    <div class="content">
        <div class="content_1">
            <p class="content_11">专注于环保设备、工程解决方案</p>
            <p class="content_12">让您省时省心的一站式服务</p>
            <div class="content_13">
                <div class="content_131" style="background-image: url(../static/img/yin_pic01.jpg)">
                    <p class="content_1311">专业设计 实力雄厚</p>
                </div>
                <div class="content_131" style="background-image: url(../static/img/yin_pic02.jpg)">
                    <p class="content_1311">严谨工艺 把控质量</p>
                </div>
                <div class="content_131" style="background-image: url(../static/img/yin_pic03.jpg)">
                    <p class="content_1311">线上线下 成熟管理</p>
                </div>
                <div class="content_131" style="background-image: url(../static/img/yin_pic04.jpg)">
                    <p class="content_1311">专业售后 完善服务</p>
                </div>
            </div>
        </div>
        <!--  关于我们 -->
        <div class="content_2">
            <p class="content_21">业务范围</p>
            <div class="content_22">
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/111.jpg"></img>
                    <p class="content_2212">环境评价</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/222.jpg"></img>
                    <p class="content_2212">环保工程</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/333.jpg"></img>
                    <p class="content_2212">环保检测</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/444.jpg"></img>
                    <p class="content_2212">环保竣工验收</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/555.jpg"></img>
                    <p class="content_2212">小废水收拉运</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/666.jpg"></img>
                    <p class="content_2212">突发环境事件应急预案</p>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom_t">
            <a class="bottom_t_a" href="${base}/index">首页</a>
            <a class="bottom_t_a" href="${base}/intro">公司简介</a>
            <a class="bottom_t_a" href="${base}/business">项目公示</a>
<!--            <a class="bottom_t_a" href="/team">团队介绍</a>-->
            <a class="bottom_t_a" href="${base}/contact">联系我们</a>
            <a class="bottom_t_c"><img src="${base}/static/img/phone.png"/><p>13553992423</p></a>
        </div>
        <div class="bottom_b">
            ©版权所有 深圳图南环保技术有限公司
            <p>粤ICP备2022054595号</p>
            <p>44030502009034</p>
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
                            <p class="red number">13553992423</p>
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