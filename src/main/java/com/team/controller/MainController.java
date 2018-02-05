package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
public class MainController {
    @RequestMapping(value = {"","/","/index"})
    public String index(){
        return "index";
    }
}
