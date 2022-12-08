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
@TableName("news")
public class News {
    @TableId
    private Long id;
    private String title;
    private String dateStr;
    private String content;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

}
