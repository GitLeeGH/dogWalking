package com.dogwalk.dogwalking.user.controller;

import com.dogwalk.dogwalking.user.User;
import com.dogwalk.dogwalking.user.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@AllArgsConstructor
public class UserController {

    private final UserService userService;

    @RequestMapping("/join")
    public String join(User user) {
        System.out.println("join");
        System.out.println(user);

        user.setRole("ROLE_USER");

        userService.saveUser(user);

        return "redirect:/login";
    }

    // 닉네임 중복체크
    @ResponseBody
    @RequestMapping("checkNickName")
    public String checkNickName(String nickName) {

        System.out.println("checkNickName");
        System.out.println(nickName);

        String result = userService.findByNickName(nickName);


        return result;
    }

    // 로그인 처리

}
