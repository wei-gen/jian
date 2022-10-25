package com.luo.manage.controller;

import com.luo.manage.base.R;
import com.luo.manage.entity.Project;
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
    private Environment environment;

    public TunnanPageController() {
    }

    @GetMapping({"/", "/index"})
    public String index1(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/index" : "/dingwei/index";
    }

    @GetMapping({"/business"})
    public String business(Model model) {
        List<Project> list = this.projectService.list();
        model.addAttribute("list", list);
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/business" : "/dingwei/business";
    }

    @GetMapping({"/businessDetail/{id}"})
    public String businessDetail(Model model, @PathVariable Long id) {
        Project byId = (Project)this.projectService.getById(id);
        model.addAttribute("bean", byId);
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/businessDetail" : "/dingwei/businessDetail";
    }

    @GetMapping({"/intro"})
    public String intro(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/intro" : "/dingwei/intro";
    }

    @GetMapping({"/team"})
    public String team(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/team" : "/dingwei/team";
    }

    @GetMapping({"/contact"})
    public String contact(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/contact" : "/dingwei/contact";
    }

    @GetMapping({"/listpage"})
    public String listpage(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/list" : "/dingwei/list";
    }

    @GetMapping({"/addpage"})
    public String addpage(Model model) {
        String[] activeProfiles = this.environment.getActiveProfiles();
        return activeProfiles[0].equals("tunan") ? "/tunan/add" : "/dingwei/add";
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
