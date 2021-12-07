package com.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.pojos.Course;
import com.app.service.IAdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private IAdminService adservice;

	@GetMapping("/homepage")
	public String showHomepage() {
		return "/adminhomepage";
	}
	
	@GetMapping("/addcourse")
	public String addcourseform(Course c) {
		return "/addcourse";
	}
	
	@PostMapping("/addcourse")
	public String addcourse(Course c,Model map) {
		map.addAttribute("msg",adservice.addCourse(c));
		return "/addcourse";
	}

	@GetMapping("/feedback")
	public String viewFeedback(Model map) {
		map.addAttribute("list", adservice.viewFeddbacks());
		return "/viewfeedbacks";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/allcourses")
	public String showAllCourses(Model map) {
		map.addAttribute("list",adservice.showAllCourse());
		return "/showallcourse";
	}
}
