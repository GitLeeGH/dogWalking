package com.dogwalk.dogwalking.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    BCryptPasswordEncoder encoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        http
                .authorizeRequests()
                    .antMatchers("/","/resources/css/**", "/fonts/**", "/resources/images/**", "/resources/js/**").permitAll()
                    .antMatchers("/user/**").authenticated()
                    .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
                    .antMatchers("/manager/**").access("hasRole('ROLE_ADMIN')")
                    .anyRequest().permitAll()
                    .and()

                .formLogin()
                    .loginPage("/login")
                    .loginProcessingUrl("/submitLogin")
                    .usernameParameter("nickName")
                    .passwordParameter("pwd")
                    .defaultSuccessUrl("/")
                    .and()
                .logout()
                    .logoutSuccessUrl("/")
                    .permitAll();

    }

}
