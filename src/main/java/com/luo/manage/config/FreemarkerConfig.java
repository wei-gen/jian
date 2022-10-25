package com.luo.manage.config;

import freemarker.template.Configuration;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FreemarkerConfig {
    @Autowired
    private Configuration configuration;
    @Autowired
    private SysUserTempletModel sysUserTempletModel;

    public FreemarkerConfig() {
    }

    @PostConstruct
    public void setSharedVariable() {

    }
}
