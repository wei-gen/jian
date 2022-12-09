package com.luo.manage.config;

import freemarker.template.Configuration;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Configurable
@Component
public class FreemarkerConfig {
    @Autowired
    private Configuration configuration;
    @Autowired
    private SysUserTempletModel sysUserTempletModel;

    @Value("${company}")
    public String company;
    @Value("${companyAddres}")
    public String companyAddres;
    @Value("${email}")
    public String email;
    @Value("${phone}")
    public String phone;
    @Value("${icp1}")
    public String icp1;
    @Value("${icp2}")
    public String icp2;

    public FreemarkerConfig() {
    }

    @PostConstruct
    public void setSharedVariable() {

    }

    @PostConstruct
    public void setConfigure() throws Exception {

        configuration.setSharedVariable("company", company);
        configuration.setSharedVariable("companyAddres", companyAddres);
        configuration.setSharedVariable("email", email);
        configuration.setSharedVariable("phone", phone);
        configuration.setSharedVariable("icp1", icp1);
        configuration.setSharedVariable("icp2", icp2);

    }
}
