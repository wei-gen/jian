<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${base}/static/layui/css/layui.css" media="all" />
    <title>${company}</title>
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;" id="fm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
                <textarea name="title" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">项目名称</label>
            <div class="layui-input-block">
                <textarea name="name" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">建设单位</label>
            <div class="layui-input-block">
                <textarea name="unit" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">建设地点</label>
            <div class="layui-input-block">
                <textarea name="site" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">公示期限</label>
            <div class="layui-input-block">
                <textarea name="deadline" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">附件地址</label>
            <div class="layui-input-block">
                <textarea name="url" class="layui-textarea" style="width: 500px; height: 80px"></textarea>
            </div>
        </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="addUser">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${base}/static/layui/layui.js"></script>
<script>
    layui.use(['form','jquery','layer'],function(){
       var form = layui.form,
           $    = layui.jquery,
           layer = layui.layer;
        form.on("submit(addUser)",function(data){
            var loadIndex = layer.load(2, {
                shade: [0.3, '#333']
            });
            var formData = new FormData($( "#fm" )[0]);
            $.ajax({
                type:"POST",
                url:"${base}/tunan/save",
                data:formData,
                processData : false, // 使数据不做处理
                contentType : false,
                success:function(res){
                    layer.close(loadIndex);
                    if(res.status == 200){
                        parent.layer.msg("添加成功!",{time:1500},function(){
                            //刷新父页面
                            parent.location.reload();
                        });
                    }else{
                        layer.msg(res.message);
                    }
                }
            });
            return false;
        });

    });
</script>
</body>
</html>