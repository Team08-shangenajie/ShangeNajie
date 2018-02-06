package com.team.service.impl;

import com.team.domain.Staff;
import com.team.mapper.StaffMapper;
import com.team.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/5.
 */
@Service("staffService")
public class StaffServiceImpl implements StaffService{
    @Resource
    private StaffMapper staffMapper;
    public Integer insertStaff(Staff staff){
        return staffMapper.insertStaff(staff);
    }

}
