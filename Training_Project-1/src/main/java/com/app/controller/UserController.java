package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dto.FeedbackDto;
import com.app.service.IAdminService;
import com.app.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IAdminService adservice;

	@GetMapping("/homepage")
	public String showHomepage(HttpServletRequest req) {
		String role = (String) req.getSession().getAttribute("role");
		if (!role.equals("user"))
			throw new RuntimeException();
		return "/userpages/userhomepage";
	}

	@GetMapping("/feedback")
	public String login(FeedbackDto feedback, HttpServletRequest req) {
		String role = (String) req.getSession().getAttribute("role");
		if (!role.equals("user"))
			throw new RuntimeException();
		return "/userpages/givefeedback";
	}

	@PostMapping("/feedback")
	public String giveFeedback(FeedbackDto feedback, Model map, HttpServletRequest req) {
		String role = (String) req.getSession().getAttribute("role");
		if (!role.equals("user"))
			throw new RuntimeException();
		map.addAttribute("msg", userService.giveFeedBack(feedback));
		return "/userpages/userhomepage";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}

	@GetMapping("/enroll")
	public String erollmentForm(Model map, HttpServletRequest req) {
		String role = (String) req.getSession().getAttribute("role");
		if (!role.equals("user"))
			throw new RuntimeException();
		map.addAttribute("list", adservice.showAllCourse());
		return "/userpages/enroll";
	}

	@GetMapping("/enrollcourse")
	public String enroll(@RequestParam String cid, HttpServletRequest req, Model map) {
		System.out.println("in enroll");
		HttpSession session = req.getSession();
		Integer userid = (Integer) session.getAttribute("userid");
		map.addAttribute("msg", userService.enroll(userid, Integer.parseInt(cid)));
		return "/userpages/userhomepage";
	}
}
