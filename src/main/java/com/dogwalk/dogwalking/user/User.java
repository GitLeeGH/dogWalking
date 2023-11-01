package com.dogwalk.dogwalking.user;

import lombok.*;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Data
@Entity(name="user_info")
@NoArgsConstructor
@DynamicUpdate
public class User  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String user_name;
    private String pwd;
    private String nickName;
    private String email;
    private String phoneNumber;
    private String address;
    private String pet_walker;
    private Date regDate;
    private Date updateDate;

    private String role;




    @Builder
    public User(
            int id,
            String user_name,
            String pwd,
            String nickName,
            String email,
            String phoneNumber,
            String address,
            String pet_walker,
            Date regDate,
            Date updateDate,
            String role) {
        this.id = id;
        this.user_name = user_name;
        this.pwd = pwd;
        this.nickName = nickName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.pet_walker = pet_walker;
        this.regDate = regDate;
        this.updateDate = updateDate;
        this.role = role;
    }



}
