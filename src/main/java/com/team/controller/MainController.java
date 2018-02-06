package com.team.controller;

import com.team.domain.Department;
import com.team.domain.Staff;
import com.team.service.DepService;
import com.team.service.StaffService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
public class MainController {
    @RequestMapping(value = {"", "/", "/index"})
    public String index() {
        return "index";
    }
    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    private Staff staff;
    @Resource
    private StaffService staffService;
    @Resource
    private DepService depService;

    @RequestMapping(value = "/home")
    public String login1() {
        staffService.insertStaff(staff);
        return "home";

    }
@RequestMapping(value = "/regist")
@ResponseBody
    public List<Department> getDep() {
    return  depService.selectAll();
//        return "regist";
    }
//    @RequestMapping(value = "/regist")
//    @ResponseBody
//    public String register(){
//       staffService.insertStaff(staff);
//        depService.selectAll();
//        return "regist";
//    }


    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

}
