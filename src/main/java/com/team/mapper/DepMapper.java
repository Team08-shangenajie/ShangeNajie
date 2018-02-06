package com.team.mapper;

import com.team.domain.Department;
import com.team.domain.Staff;

import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
public interface DepMapper {
    List<Department> selectAll();
    List<Staff> selectStaffAndDep();
}
