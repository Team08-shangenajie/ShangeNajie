package com.team.controller;

import com.team.domain.BaseResult;
import com.team.domain.Department;
import com.team.domain.Division;
import com.team.domain.User;
import com.team.service.DepService;
import com.team.service.DvsService;
import com.team.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
public class MainController {

    @Resource
    private DepService depService;
    @Resource
    private UserService userService;
    @Resource
    private DvsService dvsService;

    @RequestMapping("/unauthor")
    public String unauthor() {
        return "unauthor";
    }
    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = {"","/","/login"})
    public String login(User user, HttpServletRequest request){
//        User login = userService.login(user);
//        if (login!=null){
//            request.getSession().setAttribute("user",user);
//            request.getSession().setAttribute("username",user.getUsername());
//            return "home";
//        }else {
            return "login";
//        }
    }
    //    处理登录表单 执行shiro认证
    @RequestMapping("/submitLogin")
    public String submitLogin(User user,HttpServletRequest request){
        System.out.println("表单提交的参数为:" + user);
//        shiro认证
//        1获得当前的subject用户对象
        Subject correntUser = SecurityUtils.getSubject();
//        创建用户名 密码的token令牌
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),user.getPassword());
//        3执行shiro认证
        try {
            correntUser.login(token);
            request.getSession().setAttribute("user",user);
            request.getSession().setAttribute("username",user.getUsername());
        }catch (AuthenticationException e){
            e.printStackTrace();
            System.out.println("认证失败返回登录界面");
            return "login";
        }

        return "home";
    }

    @RequestMapping(value = "/selectU")
    @ResponseBody
    public BaseResult<User> selectUser(int pageIndex, int pageSize, String key) {
        return userService.selectUser(pageIndex, pageSize, key);
    }

    @RequestMapping(value = "/selectDep")
    @ResponseBody
    public BaseResult<Department> selectDep(int pageIndex, int pageSize, String key) {
        return depService.select(pageIndex, pageSize, key);
    }

    @RequestMapping(value = "/selectD")
    @ResponseBody
    public BaseResult<Division> selectDvs(int pageIndex, int pageSize, String key) {
        return dvsService.selectDivision(pageIndex, pageSize, key);
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

    @RequestMapping(value = "/selectUser")
    public String selectUser(){
        return "selectUser";
    }

    @RequestMapping(value = "/selectDvs")
    public String selectDvs(){
        return "selectDvs";
    }


    @RequestMapping(value = "/outRight")
    public String outRight(){
        return "outRight";
    }

    @RequestMapping(value = "/examination")
    public String examination(){
        return "examination";
    }

    @RequestMapping(value = "/personalWork")
    public String personalWork(){
        return "personalWork";
    }

    @RequestMapping(value = "/regist")
    public String regist(){
        return "regist";
    }

}
