package com.team.service;

import com.team.domain.BaseResult;
import com.team.domain.User;


/**
 * Created by dllo on 18/2/7.
 */
public interface UserService {
    User login(User user);
    BaseResult<User> selectUser(int pageIndex, int pageSize, String key);
}
