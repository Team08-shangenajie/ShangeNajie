package com.team.service.impl;
import com.team.domain.BaseResult;
import com.team.domain.Department;
import com.team.domain.User;
import com.team.mapper.UserMapper;

import com.team.page.PageBean;
import com.team.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/6.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;


    @Override
    public User login(User user) {
        User login = userMapper.selectUserByUsername(user.getUsername());
        if (login != null && user.getPassword().equals(user.getPassword())) {
            return user;
        }
        return null;
    }

    @Override
    public BaseResult<User> selectUser(int pageIndex, int pageSize, String key) {
        int total = userMapper.getTotalRecord(key);

        PageBean<User> pageBean = new PageBean<User>(pageIndex + 1,
                pageSize, total);
        pageBean.setKey(key);

        List<User> data = userMapper.selectUser(pageBean);

        BaseResult<User> result = new BaseResult<User>();
        result.setTotal(total);
        result.setData(data);

        return result;
    }


}
