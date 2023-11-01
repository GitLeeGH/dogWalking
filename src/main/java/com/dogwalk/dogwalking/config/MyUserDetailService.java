package com.dogwalk.dogwalking.config;

import com.dogwalk.dogwalking.user.User;
import com.dogwalk.dogwalking.user.service.UserService;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Component
public class MyUserDetailService implements UserDetailsService {

    private final UserService userService;

    public MyUserDetailService(UserService userService) {
        this.userService = userService;
    }


    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Optional<User> findOne = userService.findOne(s);
        User user = findOne.orElseThrow(() -> new UsernameNotFoundException("User not found"));

        return org.springframework.security.core.userdetails.User.builder()
                .username(user.getNickName())
                .password(user.getPwd())
                .authorities(user.getRole())
                .build();
    }
}
