package com.dogwalk.dogwalking.controller;

import com.dogwalk.dogwalking.user.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        System.out.println("index");
        return "home";
    }

    @RequestMapping("/home")
    public String home() {
        System.out.println("home");
        return "home";
    }

    @RequestMapping("about")
    public String about() {
        System.out.println("about");
        return "about";
    }

    @RequestMapping("contact")
    public String contact() {
        System.out.println("contact");
        return "contact";
    }

    @RequestMapping("courses")
    public String courses() {
        System.out.println("courses");
        return "courses";
    }

    @RequestMapping("admin/teachers")
    public String teachers() {
        System.out.println("teachers");
        return "teachers";
    }

    @RequestMapping("login")
    public String login() {
        System.out.println("login");
        return "login";
    }

    @RequestMapping("register")
    public String register() {
        System.out.println("register");
        return "register";
    }



}
