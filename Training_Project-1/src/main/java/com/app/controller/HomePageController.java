package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.app.dto.LoginRequest;
import com.app.dto.UserDto;
import com.app.pojos.User;
import com.app.service.IAdminService;
import com.app.service.IUserService;

@Controller
@RequestMapping("/")
public class HomePageController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IAdminService adminservice;

	@GetMapping
	public String showHomePage() {
		return "/index";
	}
	
	@GetMapping("/userhomepage")
	public String userhomepage() {
		return "/userhomepage";
	}
	
	@GetMapping("/login")
	public String login(@RequestParam String role, LoginRequest req) {
		if (role.equals("admin")) {
			return "/adminlogin";
		} else
			return "/userlogin";
	}

	@GetMapping("/register")
	public String registerUser( UserDto u) {
		return "/registrationpage";
	}
	
	@PostMapping("/register")
	public String registation(@Valid UserDto user,Model map){
		User u = userService.registerUser(user);
		if(u==null) {
			map.addAttribute("msg","user id already taken");
			return "/registrationpage";
		}
		map.addAttribute("msg","registration succesfull");
		return "/index";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String role, LoginRequest req, Model map,HttpServletRequest re) {
		if (role.equals("user")) {
			User u = userService.login(req) ;
			if (u == null) {
				map.addAttribute("msg", "Invalid id/password");
				return "/userlogin";
			}
			re.getSession().setAttribute("username",u.getName());
			re.getSession().setAttribute("role","user");
			re.getSession().setAttribute("userid",u.getUserId());
			return "redirect:/user/homepage";
		} else if (adminservice.login(req) == null) {
			
			map.addAttribute("msg", "Invalid id/password");
			return "/adminlogin";
		}
		re.getSession().setAttribute("username",adminservice.login(req).getName());
		re.getSession().setAttribute("role","admin");
		re.getSession().setAttribute("userid",adminservice.login(req).getUserId());
		return "redirect:/admin/homepage";
	}
}
