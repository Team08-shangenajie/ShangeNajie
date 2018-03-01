package com.team.service.impl;

import com.team.domain.BaseInfor;
import com.team.mapper.BaseInforMapper;
import com.team.service.BaseInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/3/1.
 */
@Service
public class BaseInforServiceImpl implements BaseInforService {
    @Resource
    private BaseInforMapper mapper;
    @Override
    public Integer submitInfor(BaseInfor baseInfor) {
        return mapper.submitInfor(baseInfor);
    }
}
