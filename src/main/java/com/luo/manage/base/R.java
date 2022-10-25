package com.luo.manage.base;

import lombok.Data;

import java.io.Serializable;

@Data
public class R implements Serializable {
    private Integer status;
    private Integer msg;
    private Object data;
    private String message;

    public R() {
    }

    public static R SUCESS(Object data) {
        R r = new R();
        r.setMsg(BaseCode.SUCCESS);
        r.setData(data);
        r.setStatus(200);
        return r;
    }

    public static R SUCESS(String message, Integer code, Object data) {
        R r = new R();
        r.setMessage(message);
        r.setData(data);
        r.setStatus(code);
        return r;
    }

    public static R FAIL(String msg) {
        R r = new R();
        r.setMessage(msg);
        r.setMsg(2000);
        r.setStatus(2000);
        return r;
    }

    public static R FAIL(Integer code, String msg) {
        R r = new R();
        r.setMessage(msg);
        r.setMsg(code);
        r.setStatus(code);
        return r;
    }

    public static R SUCESS() {
        R r = new R();
        r.setMsg(BaseCode.SUCCESS);
        r.setStatus(200);
        return r;
    }

    public static R SUCESS(int code) {
        R r = new R();
        r.setMsg(code);
        r.setStatus(code);
        return r;
    }

    public static R FAIL(Integer msg) {
        R r = new R();
        r.setMsg(msg);
        r.setStatus(400);
        return r;
    }

    public static R FAIL() {
        R r = new R();
        r.setMsg(BaseCode.FAIL);
        r.setStatus(400);
        return r;
    }

    public static R FAIL(Integer msg, Object data) {
        R r = new R();
        r.setMsg(msg);
        r.setStatus(400);
        r.setData(data);
        return r;
    }

}
