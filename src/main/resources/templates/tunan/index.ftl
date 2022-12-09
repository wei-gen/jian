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
    <div class="content">
        <div class="content_1">
            <p class="content_11">专注于环保设备、工程解决方案</p>
            <p class="content_12">让您省时省心的一站式服务</p>
            <div class="content_13">
                <div class="content_131" style="background-image: url(${base}/static/img/yin_pic01.jpg)">
                    <p class="content_1311">专业设计 实力雄厚</p>
                </div>
                <div class="content_131" style="background-image: url(${base}/static/img/yin_pic02.jpg)">
                    <p class="content_1311">严谨工艺 把控质量</p>
                </div>
                <div class="content_131" style="background-image: url(${base}/static/img/yin_pic03.jpg)">
                    <p class="content_1311">线上线下 成熟管理</p>
                </div>
                <div class="content_131" style="background-image: url(${base}/static/img/yin_pic04.jpg)">
                    <p class="content_1311">专业售后 完善服务</p>
                </div>
            </div>
        </div>
        <!--  关于我们 -->
        <div class="content_2">
            <p class="content_21">业务范围</p>
            <div class="content_22">
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/111.jpg"/>
                    <p class="content_2212">环境评价</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/222.jpg"/>
                    <p class="content_2212">环保工程</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/333.jpg"/>
                    <p class="content_2212">环保检测</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/444.jpg"/>
                    <p class="content_2212">环保竣工验收</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/555.jpg"/>
                    <p class="content_2212">小废水收拉运</p>
                </div>
                <div class="content_221">
                    <img class="content_2211" width="375px" height="210px" src="${base}/static/img/2022731/666.jpg"/>
                    <p class="content_2212">突发环境事件应急预案</p>
                </div>
            </div>
        </div>
    </div>
    <#-- 环保资讯 -->
    <div style="width:1200px;margin:0 auto 40px auto;display: flex; justify-content: space-between;">
        <div style="width: 300px;height: 300px;">
            <img src="${base}/static/img/100103431.jpg" width="300px" height="300px"/>
        </div>
        <div style="width: 500px;height: 300px;">
            <div style="width: 100%;height: 30px;background-color: #aff3b0;border-radius: 5px;">
                <span style="line-height: 30px;padding: 0 0 0 20px;color: #17a717;">行业新闻|行业资讯</span>
            </div>
            <#list newsList as row>
                <div style="width: 100%;height: 40px;display: flex;align-content: center;justify-content: space-between;">
                    <a href="${base}/news/detail/${row.id}" style="width:420px;display:inline-block;line-height:40px;text-decoration:none;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
                        ${row.title}
                    </a>
                    <span style="display:inline-block;line-height:40px;">${row.dateStr}</span>
                </div>
            </#list>
        </div>
        <div style="width: 350px;">
            <div style="width: 100%;height: 30px;background-color: #aff3b0;border-radius: 5px;">
                <span style="line-height: 30px;padding: 0 0 0 20px;color: #17a717;">项目公示</span>
            </div>
            <#list projectList as row>
                <div style="width: 100%;height: 40px;display: flex;align-content: center;justify-content: space-between;">
                    <a href="${base}/businessDetail/${row.id}" style="width:250px;display:inline-block;line-height:40px;text-decoration:none;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
                        ${row.title}
                    </a>
                    <span style="display:inline-block;line-height:40px;">${(row.createTime)?string("yyyy-MM-dd")}</span>
                </div>
            </#list>
        </div>
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