package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Feedback extends BaseEntity {
	@Column(length = 100)
	private String Feedback;
	@Column(length = 100)
	private String email;
	@Column(length = 100)
	private String name;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	public Feedback() {
		super();
	}

	public Feedback(String feedback, String email, String name, User user) {
		super();
		Feedback = feedback;
		this.email = email;
		this.name = name;
		this.user = user;
	}

	public String getFeedback() {
		return Feedback;
	}

	public void setFeedback(String feedback) {
		Feedback = feedback;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
