package com.team.service.impl;

import com.team.domain.Department;
import com.team.mapper.DepMapper;
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
    public List<Department> selectAll() {
        return depMapper.selectAll();
    }
}
