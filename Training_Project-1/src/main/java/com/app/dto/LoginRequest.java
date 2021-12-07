package com.app.dto;

public class LoginRequest {
	private int userId;
	private String password;

	public LoginRequest() {

	}

	public LoginRequest(int userId, String password) {
		this.userId = userId;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
