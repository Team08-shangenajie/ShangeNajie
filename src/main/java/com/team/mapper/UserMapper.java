package com.team.mapper;
import com.team.domain.User;
import com.team.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/7.
 */
public interface UserMapper {
    User selectUserByUsername(String username);

    List<User> selectUser(PageBean<User> pageBean);

    int getTotalRecord(String key);
}
