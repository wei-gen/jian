<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>系统用户列表--halababy管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel = "shortcut icon" href="${site.logo}">
    <link rel="stylesheet" href="${base}/static/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="${base}/static/css/user.css" media="all" />
</head>
<body class="childrenBody">
<fieldset class="layui-elem-field">
    <div class="layui-inline">
        <a class="layui-btn layui-btn-normal" data-type="addButton">新增</a>
    </div>
</fieldset>
<div class="layui-form users_list">
    <table class="layui-table" id="test" lay-filter="demo"></table>

    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </script>
</div>
<div id="page"></div>
<script type="text/javascript" src="${base}/static/layui/layui.js"></script>
<script type="text/javascript" src="${base}/static/js/tools.js"></script>
<script>
    layui.use(['layer','form','table'], function() {
        var layer = layui.layer,
                $ = layui.jquery,
                form = layui.form,
                table = layui.table,

        t = {
            elem: '#test',
            url:'${base}/tunan/list',
            method:'post',
            page: {
                layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'],
                groups: 10,
                first: "首页", //显示首页
                last: "尾页", //显示尾页
                limits:[10, 20, 30]
            },
            cols: [[
                {field:'title', title: '标题'},
                {field:'name',  title: '项目名词'},
                {field:'unit',     title: '建设单位'},
            ]]
        };
        table.render(t);

        var active = {
            addButton: function () {
                var addIndex = layer.open({
                    title: "添加",
                    type: 2,
                    content: "${base}/tunan/add",
                    success: function (layero, addIndex) {
                        setTimeout(function () {
                            layer.tips('点击返回列表', '.layui-layer-setwin .layui-layer-close', {
                                tips: 3
                            });
                        }, 500);
                    }
                });
                //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
                $(window).resize(function () {
                    layer.full(addIndex);
                });
                layer.full(addIndex);
            }
        };

        $('.layui-inline .layui-btn-normal').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
</script>
</body>
</html>