package com.team.test;

import com.team.domain.Staff;
import com.team.mapper.StaffMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by dllo on 18/2/6.
 */
public class StaffTest {

    private ApplicationContext context;
    private StaffMapper staffMapper;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath:spring-*.xml");
        staffMapper = context.getBean(StaffMapper.class);
    }
    @Test
    public void insertStaff(){
       Staff staff = new Staff("aa","123");
        int key = staffMapper.insertStaff(staff);
        System.out.println(key);
    }
}
