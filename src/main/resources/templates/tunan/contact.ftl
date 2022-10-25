<!DOCTYPE html>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="../static/css/all.css">
    <link rel="stylesheet" type="text/css" href="/static/css/contact.css">
    <script type="text/javascript" src="https://api.map.baidu.com/getscript?type=webgl&v=2.0&ak=S9FpuZN60GayM8XK6ddTlDV1Dmu9ZODq"></script>
</head>
<body>
<div>
    <div class="top">
        <div class="top_left">
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
    <div class="banner_box" style="background-image: url(../static/img/2020042109461011.jpg)"></div>
    <div class="content">
        <div class="content_1">
            <p class="content_11">公司地址：深圳市南山区南头街道田厦社区学府路桃苑公寓22号-1桃苑公寓338</p>
            <p class="content_11">电话：13553992423</p>
            <p class="content_11">传真：暂无</p>
            <p class="content_11">邮箱：865872583@qq.com</p>
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
<!--            <a class="bottom_t_a" href="/team">团队介绍</a>-->
            <a class="bottom_t_a" href="/contact">联系我们</a>
            <a class="bottom_t_c"><img src="../static/img/phone.png"/><p>13553992423</p></a>
        </div>
        <div class="bottom_b">
            ©版权所有 深圳图南环保技术有限公司
            <p>粤ICP备2022054595号</p>
            <p>44030502009034</p>
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
        title: "深圳图南环保技术有限公司"  // 信息窗口标题
    }
    var infoWindow = new BMapGL.InfoWindow("深圳市南山区南头街道田厦社区学府路桃苑公寓22号-1桃苑公寓338", opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow, map.getCenter());        // 打开信息窗口
</script>