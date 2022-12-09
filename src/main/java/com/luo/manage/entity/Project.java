//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.luo.manage.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;


@Data
@TableName("project")
public class Project {
    @TableId
    private Long id;
    private String title;
    private String name;
    private String unit;
    private String site;
    private String deadline;
    private String url;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

}
