//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.luo.manage.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import java.util.Date;
import org.apache.ibatis.reflection.MetaObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class SysMetaObjectHandler implements MetaObjectHandler {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    public SysMetaObjectHandler() {
    }

    public void insertFill(MetaObject metaObject) {
        this.logger.info("正在调用该insert填充字段方法");
        Object createDate = this.getFieldValByName("createDate", metaObject);
        Object createId = this.getFieldValByName("createId", metaObject);
        Object updateDate = this.getFieldValByName("updateDate", metaObject);
        Object updateId = this.getFieldValByName("updateId", metaObject);
        this.getFieldValByName("delFlag", metaObject);
        if (null == createDate) {
            this.setFieldValByName("createDate", new Date(), metaObject);
        }

        if (null == createId) {
            this.setFieldValByName("createId", 1L, metaObject);
        }

        if (null == updateDate) {
            this.setFieldValByName("updateDate", new Date(), metaObject);
        }

        if (null == updateId) {
            this.setFieldValByName("updateId", 1L, metaObject);
        }

        if (null == updateId) {
            this.setFieldValByName("delFlag", false, metaObject);
        }

    }

    public void updateFill(MetaObject metaObject) {
        this.logger.info("正在调用该update填充字段方法");
        this.setFieldValByName("updateDate", new Date(), metaObject);
        Object updateId = this.getFieldValByName("updateId", metaObject);
        if (null == updateId) {
            this.setFieldValByName("updateId", 1L, metaObject);
        }

    }
}
