//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.luo.manage.entity;

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
    private String name;
    private String dateStr;
    private String content;
    private Date createTime;

}
