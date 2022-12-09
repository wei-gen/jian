<!DOCTYPE html>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="${base}/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/css/intro.css">
    <title>${company}</title>
</head>
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
    <div class="banner_box" style="background-image: url(${base}/static/img/2020042109461011.jpg)"></div>
    <div class="content">
        <div class="content_1">
            <p class="content_11">公司简介</p>
            <p class="content_12">
                ${company}主营业务：深圳环保工程,深圳环保检测,深圳环境影响评价,
                深圳环评报告,深圳环保咨询,环保管家等，通过多年从事专业化技术服务的工作实践，积累了丰富的经验，
                能够准确及时把握国家各项政策、环境保护法规和技术发展方向，并熟知我省各类排污企业环境保护技术的问题和基本需求，
                善于有针对性的开展专业化技术咨询服务，同时，与其它环保机构和科研院校建立了长期合作伙伴关系，
                能够有效动员和组织相关资源，探索并形成了有效的服务模式，具备了为各类企业提供多元化服务的能力。
            </p>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom_t">
            <a class="bottom_t_a" href="/index">首页</a>
            <a class="bottom_t_a" href="/intro">公司简介</a>
            <a class="bottom_t_a" href="/business">项目公示</a>
            <a class="bottom_t_a" href="/contact">联系我们</a>
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