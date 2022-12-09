<!DOCTYPE html>

<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <link rel="stylesheet" type="text/css" href="/static/css/all.css">
    <link rel="stylesheet" type="text/css" href="/static/css/business.css">
    <link rel="stylesheet" type="text/css" href="/static/layui/css/layui.css">
    <script src="http://common.cnblogs.com/script/jquery.js" type="text/javascript"></script>
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-inline">
    <a class="layui-btn layui-btn-normal" data-type="addButton">新增</a>
</div>
<div>
    <div id="listdivId"></div>
</div>

<script>
    layui.use(['layer', 'table'], function(){
        var table = layui.table;
        var $ = layui.jquery;
        var layer = layui.layer;

        table.render({
            elem: '#listdivId'
            ,method: 'post'
            ,url: '/news/list'
            ,cols:[
                [
                    {field:'id',  title: '编号'}
                    ,{field:'title',  title: '标题'}
                    ,{field:'createTime',  title: '创建时间'}
                ]
            ]
        })

        $('.layui-inline .layui-btn-normal').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        var active = {
            addButton: function () {
                addIndex = layer.open({
                    title: "添加",
                    type: 2,
                    content: "${base}/news/add",
                    success: function (layero, addIndex) {
                        setTimeout(function () {
                            layer.tips('点击此处返回列表', '.layui-layer-setwin .layui-layer-close', {
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

    });
</script>
</body>
</html>