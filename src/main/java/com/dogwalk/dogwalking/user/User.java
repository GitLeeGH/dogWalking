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




    public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getUser_name() {
		return user_name;
	}




	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}




	public String getPwd() {
		return pwd;
	}




	public void setPwd(String pwd) {
		this.pwd = pwd;
	}




	public String getNickName() {
		return nickName;
	}




	public void setNickName(String nickName) {
		this.nickName = nickName;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPhoneNumber() {
		return phoneNumber;
	}




	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getPet_walker() {
		return pet_walker;
	}




	public void setPet_walker(String pet_walker) {
		this.pet_walker = pet_walker;
	}




	public Date getRegDate() {
		return regDate;
	}




	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}




	public Date getUpdateDate() {
		return updateDate;
	}




	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}




	public String getRole() {
		return role;
	}




	public void setRole(String role) {
		this.role = role;
	}




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
