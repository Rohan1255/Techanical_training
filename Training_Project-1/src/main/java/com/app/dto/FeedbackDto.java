package com.app.dto;

public class FeedbackDto {
	private String feedback;
	private String email;
	private String name;
	private int userId;
	
	public FeedbackDto() {
		super();
	}
	
	public FeedbackDto(String feedback, String email, String name, int userId) {
		super();
		this.email = email;
		this.name = name;
		this.userId = userId;
	}
	
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "FeedbackDto [Feedback=" + feedback + ", email=" + email + ", name="
				+ name + ", userId=" + userId + "]";
	}
	
	
}
