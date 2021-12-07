package com.app.service;

import java.util.List;

import com.app.dto.LoginRequest;
import com.app.pojos.Admin;
import com.app.pojos.Course;
import com.app.pojos.Feedback;

public interface IAdminService {
	Admin login(LoginRequest req);

	List<Feedback> viewFeddbacks();

	String addCourse(Course c);

	List<Course> showAllCourse();
}
