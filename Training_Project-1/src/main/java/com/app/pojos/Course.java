package com.app.pojos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table
public class Course {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int courseId;
	private String courseName;
	private String courseResource;
	private double courseFee;
	private String courseDesc;
	@Transient
	@OneToMany(mappedBy = "users",cascade = CascadeType.ALL)
	private List<User> user = new ArrayList<>();	
	
	public Course() {
		super();
	}

	public Course(int courseId, String courseName, String courseResource, double courseFee, String courseDesc) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseResource = courseResource;
		this.courseFee = courseFee;
		this.courseDesc = courseDesc;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseResource() {
		return courseResource;
	}

	public void setCourseResource(String courseResource) {
		this.courseResource = courseResource;
	}

	public double getCourseFee() {
		return courseFee;
	}

	public void setCourseFee(double courseFee) {
		this.courseFee = courseFee;
	}

	public String getCourseDesc() {
		return courseDesc;
	}

	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}
	
	public void addUser(User u) {
		u.setCourse(this);
		this.user.add(u);
		System.out.println("User added");
	}
}
