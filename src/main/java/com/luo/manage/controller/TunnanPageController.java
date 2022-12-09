package com.luo.manage.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.luo.manage.base.R;
import com.luo.manage.entity.News;
import com.luo.manage.entity.Project;
import com.luo.manage.service.NewsService;
import com.luo.manage.service.ProjectService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TunnanPageController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private NewsService newsService;

    @GetMapping({"/", "/index"})
    public String index1(Model model) {

        QueryWrapper<Project> q1 = new QueryWrapper<>();
        q1.orderByDesc("create_time");
        Page<Project> projectPage = this.projectService.page(new Page<>(1, 7), q1);
        QueryWrapper<News> q2 = new QueryWrapper<>();
        q2.orderByDesc("create_time");
        Page<News> newsPage = this.newsService.page(new Page<>(1, 7), q2);

        model.addAttribute("projectList",projectPage.getRecords());
        model.addAttribute("newsList",newsPage.getRecords());

        return "/tunan/index";
    }

    @GetMapping({"/business"})
    public String business(Model model) {
        List<Project> list = this.projectService.list();
        model.addAttribute("list", list);
        return "/tunan/business";
    }

    @GetMapping({"/businessDetail/{id}"})
    public String businessDetail(Model model, @PathVariable Long id) {
        Project byId = (Project)this.projectService.getById(id);
        model.addAttribute("bean", byId);
        return "/tunan/businessDetail";
    }

    @GetMapping({"/intro"})
    public String intro(Model model) {
        return "/tunan/intro";
    }

    @GetMapping({"/team"})
    public String team(Model model) {
        return "/tunan/team";
    }

    @GetMapping({"/contact"})
    public String contact(Model model) {
        return "/tunan/contact";
    }

    @GetMapping({"/listpage"})
    public String listpage(Model model) {
        return "/tunan/list";
    }

    @GetMapping({"/addpage"})
    public String addpage(Model model) {
        return "/tunan/add";
    }

    @RequestMapping({"/list"})
    @ResponseBody
    public R list() {
        return R.SUCESS();
    }

    @RequestMapping({"/add"})
    @ResponseBody
    public R add(Project project) {
        this.projectService.save(project);
        return R.SUCESS();
    }
}
