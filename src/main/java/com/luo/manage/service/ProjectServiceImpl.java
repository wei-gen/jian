package com.luo.manage.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.luo.manage.dao.ProjectDao;
import com.luo.manage.entity.Project;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl extends ServiceImpl<ProjectDao, Project> implements ProjectService {
}
