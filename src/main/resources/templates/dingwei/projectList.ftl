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
<div>
    <div>项目公式列表</div>
    <div id="listdivId"></div>
</div>

<script>
    layui.use(['layer', 'table'], function(){
        var table = layui.table;
        table.render({
            elem: '#listdivId'
            ,url: '/project/list'
            ,cols:[
                [
                    {field:'empno',  title: '编号'}
                    ,{field:'empno',  title: '编号'}
                    ,{field:'empno',  title: '编号'}
                    ,{field:'empno',  title: '编号'}
                    ,{field:'empno',  title: '编号'}
                ]
            ]
        })
    });
</script>
</body>
</html>