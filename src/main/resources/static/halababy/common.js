var script = document.createElement("script");
script.type = "text/javascript";
script.src = "/static/js/jquery.min.js";

/**
 * 设置select标签内容
 * @param id
 */
function setSelectContent(id, arrayContent) {
    let idObject = $(id);
    idObject.empty();
    idObject.append('<option value="">--请选择--</option>');
    if(arrayContent != null){
        arrayContent.forEach((ele, index) => {
            idObject.append('<option value="' + ele.id + '">' + ele.name + '</option>');
        });
    }
}

var resourceIdIdVerify = function(value,item){
    if(value == null || value == ''){
        return "未选择资源，不可提交";
    }
}

function formatFileSize(fileSize) {
    if (fileSize < 1024) {
        return fileSize;
    } else if (fileSize < (1024*1024)) {
        var temp = fileSize / 1024;
        temp = temp.toFixed(2);
        return temp;
    } else if (fileSize < (1024*1024*1024)) {
        var temp = fileSize / (1024*1024);
        temp = temp.toFixed(2);
        return temp;
    } else {
        var temp = fileSize / (1024*1024*1024);
        temp = temp.toFixed(2);
        return temp;
    }
}