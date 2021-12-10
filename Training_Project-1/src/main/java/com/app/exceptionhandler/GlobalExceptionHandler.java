package com.app.exceptionhandler;

import org.springframework.ui.Model;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public String handleInvalidArguments(Model map) {
		System.out.println("Here");
		map.addAttribute("errMsg","registration failed, userid already taken");
		return "/register";
	}
	
	@ExceptionHandler(RuntimeException.class)
	public String handleRuntimeException() {
		return "redirect:/";
	}
}
