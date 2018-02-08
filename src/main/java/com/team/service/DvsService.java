package com.team.service;

import com.team.domain.BaseResult;

import com.team.domain.Division;

/**
 * Created by dllo on 18/2/8.
 */
public interface DvsService {
    BaseResult<Division> selectDivision(int pageIndex, int pageSize, String key);
}
