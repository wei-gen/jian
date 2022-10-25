package com.luo.manage.config;

import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SysUserTempletModel implements TemplateMethodModelEx {

    public SysUserTempletModel() {
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        return null;
    }
}
