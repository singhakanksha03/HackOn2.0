package com.covidhelperapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covidhelperapp.entity.User;
import com.covidhelperapp.service.UserService;

@Controller
public class RegisterController {

	
	@Autowired
	private UserService userservice;
	
	
	@RequestMapping(value="/register", method= RequestMethod.GET)
	public String RegisterUser() {
		return "userReg";
	}
	@RequestMapping(value="/register", method= RequestMethod.POST)
	public String registerUser(@ModelAttribute("user") User user,ModelMap model) {
		String registrationNo=userservice.saveUser(user);
		model.addAttribute("result", registrationNo);
		return "userReg";

	}
	
	
	
}
