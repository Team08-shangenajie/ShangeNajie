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
    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }


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

    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/personalCenter")
    public String personalCenter(){
        return "personalCenter";
    }

    @RequestMapping(value = "/scienceProject")
    public String scienceProject(){
        return "scienceProject";
    }

    @RequestMapping(value = "/control")
    public String control(){
        return "control";
    }

    @RequestMapping(value = "/outProject")
    public String outProject(){
        return "outProject";
    }

    @RequestMapping(value = "/engineer")
    public String engineer(){
        return "engineer";
    }

    @RequestMapping(value = "/manageCon")
    public String manageCon(){
        return "manageCon";
    }

    @RequestMapping(value = "/teamLeader")
    public String teamLeader(){
        return "teamLeader";
    }

    @RequestMapping(value = "/stManage")
    public String stManage(){
        return "stManage";
    }

    @RequestMapping(value = "/finance")
    public String finance(){
        return "finance";
    }

    @RequestMapping(value = "/generalMan")
    public String generalMan(){
        return "generalMan";
    }
}
