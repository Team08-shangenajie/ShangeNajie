//package com.team.controller;
//
//import com.team.domain.Staff;
//import com.team.service.StaffService;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.annotation.Resource;
//
///**
// * Created by dllo on 18/2/5.
// */
//@Controller
//public class StaffAction {
//    private Staff staff;
//    @Resource
//    private StaffService staffService;
//
//    @RequestMapping(value = "/home")
//    public String login() {
//        staffService.insertStaff(staff);
//        return "home";
//
//    }
//
//    public Staff getStaff() {
//        return staff;
//    }
//
//    public void setStaff(Staff staff) {
//        this.staff = staff;
//    }
//}
