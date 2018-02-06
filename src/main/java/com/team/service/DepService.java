package com.team.service;

import com.team.domain.BaseResult;
import com.team.domain.Department;

/**
 * Created by dllo on 18/2/6.
 */
public interface DepService {
    BaseResult<Department> select(int pageIndex, int pageSize, String key);
}
