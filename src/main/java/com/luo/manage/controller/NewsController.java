package com.luo.manage.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.luo.manage.base.LayerData;
import com.luo.manage.base.R;
import com.luo.manage.entity.News;
import com.luo.manage.entity.Project;
import com.luo.manage.service.NewsService;
import com.luo.manage.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping({"/news"})
public class NewsController {
    @Autowired
    private NewsService newsService;

    @GetMapping({"/detail/{id}"})
    public String detail(Model model, @PathVariable Long id) {
        News news = this.newsService.getById(id);
        model.addAttribute("bean", news);
        return "/news/detail";
    }

    @GetMapping({"/list"})
    public String list(Model model) {
        return "/tunan/news/list";
    }

    @GetMapping({"/add"})
    public String add(Model model,Long id) {
        News news = this.newsService.getById(id);
        model.addAttribute("bean",news);
        return "/tunan/news/add";
    }

    @PostMapping({"/list"})
    @ResponseBody
    public LayerData list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                          @RequestParam(value = "limit", defaultValue = "10") Integer limit) {
        QueryWrapper<News> queryWrapper = new QueryWrapper<>();
        Page<News> newsPage = this.newsService.page(new Page(page, limit),queryWrapper);
        LayerData<News> data = new LayerData();
        data.setData(newsPage.getRecords());
        data.setCount(newsPage.getTotal());
        data.setCurr(newsPage.getCurrent());
        return data;
    }

    @PostMapping({"/save"})
    @ResponseBody
    public R save(News news) {
        if(ObjectUtil.isNotNull(news.getId())) {
            SimpleDateFormat simpleFormatter = new SimpleDateFormat("yyyy-MM-dd HH");
            news.setCreateTime(new Date());
            news.setDateStr(simpleFormatter.format(new Date()));
        }
        this.newsService.saveOrUpdate(news);
        return R.SUCESS();
    }
}