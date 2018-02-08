package com.team.mapper;

import com.team.domain.Department;
import com.team.domain.Division;
import com.team.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/8.
 */
public interface DivisionMapper {
    List<Division> selectDvs(PageBean<Division> pageBean);

    int getTotalRecord(String key);
}
