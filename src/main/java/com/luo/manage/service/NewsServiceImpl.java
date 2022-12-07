package com.luo.manage.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.luo.manage.dao.NewsDao;
import com.luo.manage.dao.ProjectDao;
import com.luo.manage.entity.News;
import com.luo.manage.entity.Project;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsDao, News> implements NewsService {
}
