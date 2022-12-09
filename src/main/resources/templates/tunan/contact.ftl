<!DOCTYPE html>

<html lang="en">

<head>
    <title>${company}</title>
    <link rel="stylesheet" type="text/css" href="${base}/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/css/contact.css">
    <script type="text/javascript" src="https://api.map.baidu.com/getscript?type=webgl&v=2.0&ak=S9FpuZN60GayM8XK6ddTlDV1Dmu9ZODq"></script>
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
            <p class="content_11">公司地址：${companyAddres}</p>
            <p class="content_11">电话：${phone}</p>
            <p class="content_11">传真：暂无</p>
            <p class="content_11">邮箱：${email}</p>
            <div class="content_map"></div>
        </div>
        <div id="content_ditu" class="content_ditu">
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
</div>
</body>
</html>
<script>
    //113.930541,22.533985
    var map = new BMapGL.Map('content_ditu');
    map.centerAndZoom(new BMapGL.Point(113.930541, 22.533985), 13);
    map.enableScrollWheelZoom(true);
    var opts = {
        width: 250,     // 信息窗口宽度
        height: 100,    // 信息窗口高度
        title: "${company}"  // 信息窗口标题
    }
    var infoWindow = new BMapGL.InfoWindow("${companyAddres}", opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow, map.getCenter());        // 打开信息窗口
</script>