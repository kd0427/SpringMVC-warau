package com.global.vo;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserVO {
	
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")//영어 대소문자 숫자만 가능
	private String user_id;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw2;
	
	@Size(min=2, max=10)
	@Pattern(regexp = "[가-힣]*") // 한글만 입력가능
	private String user_name;
	
	@Email
	private String user_email;
	
	
	@Pattern(regexp = "[가-힣]*") // 한글만 입력가능
	private String user_pet;
	private String user_date;
	
	private boolean userIdExist;
	private boolean userLogin; //로그인 확인변수
	
	
	public UserVO() {
		this.userIdExist =false;
		this.userLogin=false;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pet() {
		return user_pet;
	}
	public void setUser_pet(String user_pet) {
		this.user_pet = user_pet;
	}
	public String getUser_date() {
		return user_date;
	}
	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}
	public boolean isUserIdExist() {
		return userIdExist;
	}
	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}
	public boolean isUserLogin() {
		return userLogin;
	}
	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	
	
}
