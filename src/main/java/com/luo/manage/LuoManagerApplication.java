package com.luo.manage;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan({"com.luo.manage.dao"})
public class LuoManagerApplication extends SpringBootServletInitializer {
    public LuoManagerApplication() {
    }

    public static void main(String[] args) {
        SpringApplication.run(LuoManagerApplication.class, args);
    }
}
