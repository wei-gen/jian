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
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;" id="fm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
                <textarea name="title" class="layui-textarea" style="width: 500px; height: 80px">${bean.title}</textarea>
            </div>
        </div>

    </div>
    <div class="layui-form-item">
        <textarea id="contentId" name="content" style="display: none;" value="${bean.content}"></textarea>
        <div class="layui-inline">
            <label class="layui-form-label">项目名称</label>
            <div class="layui-input-block">
                <div id="contentDivId" ></div>
            </div>
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
<script src="https://cdn.jsdelivr.net/npm/wangeditor@latest/dist/wangEditor.min.js"></script>

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
    var content = document.getElementById("contentId");
    const E = window.wangEditor
    const editor = new E('#contentDivId')
    editor.config.height = 500
    editor.config.onchange = function (html) {
        // 监控变化，同步更新富文本内容到 textarea
        content.value = html;
    }
    editor.create();
    editor.txt.html(`${bean.content}`)
</script>
</body>
</html>