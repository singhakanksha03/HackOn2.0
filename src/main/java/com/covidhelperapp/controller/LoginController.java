package com.covidhelperapp.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.covidhelperapp.entity.User;
import com.covidhelperapp.service.UserService;

@Controller
public class LoginController {
	         
	   
    @Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String home(){
		return "home";
	}
	@RequestMapping(value="/login" ,method=RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping(value="/loginuser",method=RequestMethod.POST)
	public String loginUser(@RequestParam String registration,@RequestParam String password,ModelMap model,HttpSession request) {
		request.setAttribute("logged", "true");
		try {
		User u=userService.loginUser(registration, password);
		if(u!=null) {
		
			model.addAttribute("user", u);
			
			return "loginuser";
		}
		model.addAttribute("error", "Invalid User name or password");
		return "login";
		}
		catch (Exception e) {
			model.addAttribute("error", "Invalid User name");
			return "login";
		}
		
	}
	
	
	
}
