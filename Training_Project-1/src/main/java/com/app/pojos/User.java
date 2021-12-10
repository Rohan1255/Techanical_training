package com.app.pojos;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "user1")
public class User {
	@Id
	private int userId;
	@Column(length = 100)
	private String name;
	@Column(length = 100)
	private String address;
	@Column(length = 100)
	private String phone;
	@Column(length = 100)
	private String Email;
	@Column(length = 100)
	private String password;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate regDate;
	@ManyToOne
	@JoinColumn(name = "course_id")
	private Course course;
	private String photo;

	public User() {

	}

	public User(int userId, String name, String address, String phone, String email, String password, LocalDate regDate,
			String photo) {
		super();
		this.userId = userId;
		this.name = name;
		this.address = address;
		this.phone = phone;
		Email = email;
		this.password = password;
		this.regDate = regDate;
		this.photo = photo;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDate regDate) {
		this.regDate = regDate;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
