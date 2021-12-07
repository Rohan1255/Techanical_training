package com.app.service;

import com.app.dto.FeedbackDto;
import com.app.dto.LoginRequest;
import com.app.pojos.User;

public interface IUserService {

	public User login(LoginRequest req);

	public String giveFeedBack(FeedbackDto feedback);
	
	public String enroll(int userid,int courseId);
}
