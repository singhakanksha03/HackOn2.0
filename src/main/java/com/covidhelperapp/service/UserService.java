package com.covidhelperapp.service;

import java.util.List;

import com.covidhelperapp.entity.ElgibilityCheck;
import com.covidhelperapp.entity.User;


public interface UserService {
	
	String saveUser(User user);
	void deleteUser(String aadhar);
	
	List<User> findDonor(boolean donor, String blood);
	User loginUser(String registration,String password);
    User update(User user);
	User findUser(String aadhar);
	String checkEligibility(ElgibilityCheck eC, User user);
	
}
