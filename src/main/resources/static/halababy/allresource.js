var script = document.createElement("script");
script.type = "text/javascript";
script.src = "/static/js/jquery.min.js";


var resourceIdIdVerify = function(value,item){
    if(value == null || value == ''){
        return "未选择资源，不可提交";
    }
}

var subModuleTypeIdVerify = function(value, item){
    var moduleId = $('#moduleId').val();
    if(moduleId == 100004 && (value == null || value == "")){
        return "欢乐之家必须选择子模块分类";
    }
}

var subModuleIdVerify = function(value, item){
    var moduleId = $('#moduleId').val();
    if(moduleId == 100004 && (value == null || value == "")){
        return "欢乐之家必须选择子模块";
    }
    if(moduleId == 100000 && (value == null || value == "")){
        return "科学家必须选择子模块";
    }
}

var keyStrVerify = function(value, item){
    if(value.length < 10 || value.length > 20){
        return "字符串长度应为10-20个字符";
    }
}