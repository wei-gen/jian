//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.luo.manage.base;

import lombok.Data;

import java.util.List;

@Data
public class LayerData<T> {
    private Integer code = 0;
    private List<T> data;
    private String msg = "";
    private Long curr;
    private Long count;

}
