package com.dogwalk.dogwalking.user.service;

import com.dogwalk.dogwalking.user.User;
import com.dogwalk.dogwalking.user.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class UserService {

    private UserRepository userRepository;

    private PasswordEncoder passwordEncoder;


    public int saveUser(User user) {
        //패스워드 암호화
        user.setPwd(passwordEncoder.encode(user.getPwd()));
        userRepository.save(user);
        return user.getId();
    }

    // 닉네임 중복체크
    public String findByNickName(String nickName) {
        System.out.println("service");
        System.out.println(nickName);

        User user = userRepository.findByNickName(nickName);
        System.out.println(user);
        if(user == null) {
            return "success";
        } else {
            return "fail";
        }
    }

    public Optional<User> findOne(String nickName) {
        return userRepository.findOneByNickName(nickName);
    }


}
