package com.team.test;

import com.team.domain.User;
import com.team.service.UserService;
import org.aspectj.lang.annotation.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by dllo on 18/2/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-*.xml"})
public class MainTest {
    @Autowired
    private UserService userService;

    @Test
    public void testService(){
        String userName="shange";
        User user= userService.selectByUserName(userName);

        System.out.println(user);

    }
}
