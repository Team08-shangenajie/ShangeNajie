package com.team.service.impl;

import com.team.domain.BaseResult;
import com.team.domain.Department;
import com.team.mapper.DepMapper;
import com.team.page.PageBean;
import com.team.service.DepService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
@Service
public class DepServiceImpl implements DepService {
    @Resource
    private DepMapper depMapper;
    @Override
    public BaseResult<Department> select(int pageIndex, int pageSize, String key) {
        int total = depMapper.getTotalRecord(key);

        PageBean<Department> pageBean = new PageBean<Department>(pageIndex + 1,
                pageSize, total);
        pageBean.setKey(key);

        List<Department> data = depMapper.select(pageBean);

        BaseResult<Department> result = new BaseResult<Department>();
        result.setTotal(total);
        result.setData(data);

        return result;
    }
}
