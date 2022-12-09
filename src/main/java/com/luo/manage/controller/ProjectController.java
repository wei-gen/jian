package com.luo.manage.controller;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.luo.manage.base.LayerData;
import com.luo.manage.base.R;
import com.luo.manage.entity.Project;
import com.luo.manage.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;


@Controller
@RequestMapping({"/tunan"})
public class ProjectController {
    @Autowired
    private ProjectService projectService;

    public ProjectController() {
    }

    @GetMapping({"/list"})
    public String list(Model model) {
        return "/tunan/list";
    }

    @GetMapping({"/add"})
    public String addpage(Model model) {
        return "/tunan/add";
    }

    @RequestMapping({"/list"})
    @ResponseBody
    public LayerData list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                          @RequestParam(value = "limit", defaultValue = "10") Integer limit) {
        Page<Project> pages = new Page((long) page, (long) limit);
        Page<Project> page1 = this.projectService.page(pages);
        LayerData<Project> data = new LayerData();
        data.setData(page1.getRecords());
        data.setCount(page1.getTotal());
        data.setCurr(page1.getCurrent());
        return data;
    }

    @RequestMapping({"/save"})
    @ResponseBody
    public R save(Project project) {
        if (project.getCreateTime() == null) {
            project.setCreateTime(new Date());
        }
        if (StrUtil.isBlank(project.getTitle())
                || StrUtil.isBlank(project.getName())
                || StrUtil.isBlank(project.getUnit())) {
            return R.FAIL("标题、项目名称、建设单位必须要填");
        }
        this.projectService.save(project);
        return R.SUCESS();
    }
}