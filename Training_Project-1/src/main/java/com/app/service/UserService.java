package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.CourseRepo;
import com.app.dao.FeedbackRepo;
import com.app.dao.UserRepo;
import com.app.dto.FeedbackDto;
import com.app.dto.LoginRequest;
import com.app.pojos.Course;
import com.app.pojos.Feedback;
import com.app.pojos.User;

@Service
public class UserService implements IUserService {
	@Autowired
	private UserRepo userRepo;
	@Autowired
	private FeedbackRepo feedRepo;
	@Autowired
	private CourseRepo cRepo;

	@Override
	public User login(LoginRequest req) {
		User user = userRepo.findByUserIdAndPassword(req.getUserId(), req.getPassword());
		return user;
	}

	@Override
	public String giveFeedBack(FeedbackDto feedback) {
		int userId = feedback.getUserId();
		try {
			User user = userRepo.findById(userId).orElseThrow(() -> new RuntimeException());
			Feedback fb = new Feedback(feedback.getFeedback(), feedback.getEmail(), feedback.getName(), user);
			feedRepo.save(fb);
			return "Feedback submitted";
		} catch (Exception e) {
			return "Invalid UserId";
		}
	}

	@Override
	public String enroll(int userid, int courseid) {
		try {
			System.out.println(courseid);
			System.out.println(userid);
			User u = userRepo.findById(userid).orElseThrow(() -> new RuntimeException());
			Course c = cRepo.findById(courseid).orElseThrow(() -> new RuntimeException());
			c.addUser(u);
			cRepo.save(c);
			userRepo.save(u);
			System.out.println("Successfull enrolled for " + c.getCourseName());
			return "Successfull enrolled for " + c.getCourseName();
		} catch (Exception e) {
			e.printStackTrace();
			return "Enrollmenrt failed";
		}

	}

}
