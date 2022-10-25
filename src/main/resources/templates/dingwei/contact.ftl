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
            <p>深圳市鼎维环保科技有限公司</p>
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
            <p>15622202701</p>
        </div>
    </div>
    <div class="banner_box" style="background-image: url(../static/img/2020042109461011.jpg)"></div>
    <div class="content">
        <div class="content_1">
            <p class="content_11">公司地址：深圳市宝安区松岗街道中海西岸华府南区6栋AB单元2H</p>
            <p class="content_11">电话：15622202701</p>
            <p class="content_11">传真：暂无</p>
            <p class="content_11">邮箱：493359327@qq.com</p>
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
            <a class="bottom_t_c"><img src="../static/img/phone.png"/><p>15622202701</p></a>
        </div>
        <div class="bottom_b">
            ©版权所有 深圳市鼎维环保科技有限公司
            <p>粤ICP备2022060728号</p>
            <p>44031102000756</p>
        </div>
    </div>
</div>
</body>
</html>
<script>
    //113.930541,22.533985
    var map = new BMapGL.Map('content_ditu');
    map.centerAndZoom(new BMapGL.Point(113.829068,22.775285), 13);
    map.enableScrollWheelZoom(true);
    var opts = {
        width: 250,     // 信息窗口宽度
        height: 100,    // 信息窗口高度
        title: "深圳市鼎维环保科技有限公司"  // 信息窗口标题
    }
    var infoWindow = new BMapGL.InfoWindow("深圳市宝安区松岗街道中海西岸华府南区6栋AB单元2H", opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow, map.getCenter());        // 打开信息窗口
</script>