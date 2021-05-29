package com.covidhelperapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.covidhelperapp.entity.ElgibilityCheck;
import com.covidhelperapp.entity.User;
import com.covidhelperapp.service.UserService;


@Controller
public class UserController {

  @Autowired
  private UserService userService;

  @RequestMapping("/delete")
  public String delete(@RequestParam String aadhar,HttpSession request
		  ) {
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
	  request.removeAttribute("logged");
	  
    userService.deleteUser(aadhar);
    return "delete";
  }

  @RequestMapping(value = "/update", method = RequestMethod.GET)
  public String update(@RequestParam String aadhar, ModelMap model,HttpSession request ) {
	  
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User user = userService.findUser(aadhar);
    model.addAttribute("user", user);
    return "update";
  }

  @RequestMapping(value = "/update-user", method = RequestMethod.POST)
  public String saveUser(
    @ModelAttribute User user,
    BindingResult bindingResult,
    ModelMap model,HttpSession request
  ) {
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User newUser = userService.update(user);
    model.addAttribute("user", newUser);
    return "loginuser";
  }

  @RequestMapping(value = "/eligibility", method = RequestMethod.GET)
  public String eligibility(@RequestParam String aadhar, ModelMap model,HttpSession request) {
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User user = userService.findUser(aadhar);
    model.addAttribute("user", user);
    return "eligibilityCheck";
  }

  @RequestMapping(value = "/check", method = RequestMethod.POST)
  public String elgibilityCheck(
    @RequestParam String aadhar,
    @ModelAttribute ElgibilityCheck EC,
    ModelMap model,HttpSession request
  ) {
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User user = userService.findUser(aadhar);
    model.addAttribute("user", user);
    String result = userService.checkEligibility(EC, user);
    model.addAttribute("result", result);
    return "loginuser";
  }

  @RequestMapping("/find-Donor")
  public String searchDonor(@RequestParam String aadhar, ModelMap model,HttpSession request) {
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User user = userService.findUser(aadhar);
    model.addAttribute("user", user);
    List<User> DonorList = userService.findDonor(true, user.getBlood());
    System.out.println("In Controller :" + DonorList);
    model.addAttribute("users", DonorList);
    return "showDonor";
  }

  @RequestMapping("/go-back")
  public String find(@RequestParam String aadhar,ModelMap model,HttpSession request){
	  if(!"true".equals(request.getAttribute("logged"))) {
		  return "session";
	  }
    User user=userService.findUser(aadhar);
    model.addAttribute("user", user);
    return "loginuser";
  }

  @RequestMapping("/logout")
  public String logout(HttpSession request){
    request.removeAttribute("logged");
    return "logout";
  }
}
