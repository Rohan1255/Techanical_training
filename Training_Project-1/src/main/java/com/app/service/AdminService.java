package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.AdminRepo;
import com.app.dao.CourseRepo;
import com.app.dao.FeedbackRepo;
import com.app.dto.LoginRequest;
import com.app.pojos.Admin;
import com.app.pojos.Course;
import com.app.pojos.Feedback;

@Service
public class AdminService implements IAdminService{
	@Autowired
	private AdminRepo repo;
	@Autowired
	private FeedbackRepo fRepo;
	@Autowired
	private CourseRepo cRepo;
	
	@Override
	public Admin login(LoginRequest req) {
		Admin ad = repo.findByAdminIdAndPassword(req.getUserId(),req.getPassword());
		return ad;
	}

	@Override
	public List<Feedback> viewFeddbacks() {
		List<Feedback> list = fRepo.findAll();
		return list;
	}

	@Override
	public String addCourse(Course c) {
		try {
			cRepo.save(c);
			return "Course added succesfully";
		}catch(Exception e) {
			return "Adding course failed";
		}
	}

	@Override
	public List<Course> showAllCourse() {
		return cRepo.findAll();
	}
	

}
