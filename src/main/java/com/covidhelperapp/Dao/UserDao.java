package com.covidhelperapp.Dao;

import java.util.List;

import com.covidhelperapp.entity.User;


public interface UserDao {
	
    void create(User user);
	
	User update(User user);
	
	void delete(String aadhar);
	
	List<User> read(boolean donor, String blood);
	
	User findUser(String registration,String pass);
	
    User find(String aadhar);
    
    void updateDonar(User user);

}
