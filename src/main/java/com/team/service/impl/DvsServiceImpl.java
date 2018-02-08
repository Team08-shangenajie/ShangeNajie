package com.team.service.impl;

import com.team.domain.BaseResult;

import com.team.domain.Division;
import com.team.mapper.DivisionMapper;
import com.team.page.PageBean;
import com.team.service.DvsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/8.
 */
@Service
public class DvsServiceImpl implements DvsService {
    @Resource
    private DivisionMapper divisionMapper;
    @Override
    public BaseResult<Division> selectDivision(int pageIndex, int pageSize, String key) {
        int total = divisionMapper.getTotalRecord(key);

        PageBean<Division> pageBean = new PageBean<Division>(pageIndex + 1,
                pageSize, total);
        pageBean.setKey(key);

        List<Division> data = divisionMapper.selectDvs(pageBean);

        BaseResult<Division> result = new BaseResult<Division>();
        result.setTotal(total);
        result.setData(data);

        return result;
    }
}
