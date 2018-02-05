package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
public class MainController {
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
}
