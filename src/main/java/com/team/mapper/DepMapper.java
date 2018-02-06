package com.team.mapper;

import com.team.domain.Department;
import com.team.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
public interface DepMapper {
    List<Department> select(PageBean<Department> pageBean);

    int getTotalRecord(String key);
}
