<!DOCTYPE html>

<html lang="en">

<head>
    <title>${company}</title>
    <link rel="stylesheet" type="text/css" href="${base}/static/css/all.css">
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
    <div class="banner_box"></div>
    <div class="content">
        <div class="content_1"></div>
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
</div>
</body>

</html>