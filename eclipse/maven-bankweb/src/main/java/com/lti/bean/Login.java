package com.lti.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_LOGIN")
public class Login {
	@Id
	@Column(name="USER_ID")
	private String user_id;
	
	@Column(name="USER_PASSWORD")
	private String user_password;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Login(String user_id, String user_password) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	@Override
	public String toString() {
		return "Login_Bean [user_id=" + user_id + ", user_password=" + user_password + "]";
	}

}
