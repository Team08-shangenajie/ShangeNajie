package com.team.controller;

import com.team.domain.BaseResult;
import com.team.domain.Department;
import com.team.service.DepService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
public class MainController {

    @Resource
    private DepService depService;

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = {"","/"})
    public String index() {
        return "index";
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

    @RequestMapping(value = "/query")
    public String query(){
        return "query";
    }

    @RequestMapping(value = "/satellite")
    public String satellite(){
        return "satellite";
    }

    @RequestMapping(value = "/ray")
    public String ray(){
        return "ray";
    }

    @RequestMapping(value = "/workshop")
    public String workshop(){
        return "workshop";
    }

    @RequestMapping(value = "/unit")
    public String unit(){
        return "unit";
    }

    @RequestMapping(value = "/selectCompany")
    public String selectCompany(){
        return "selectCompany";
    }

    @RequestMapping(value = "/selectDep")
    @ResponseBody
    public BaseResult<Department> selectStudent(int pageIndex, int pageSize, String key) {
        return depService.select(pageIndex, pageSize, key);
    }
}
