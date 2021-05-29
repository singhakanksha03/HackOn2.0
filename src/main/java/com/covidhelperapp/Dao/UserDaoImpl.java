package com.covidhelperapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.covidhelperapp.entity.User;

@Component
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private  UserRepository userRepository;

	public UserDaoImpl(UserRepository userrepository) {
		super();
		this.userRepository = userrepository;
	}

	@Override
	public void create(User user) {
		userRepository.save(user);
	}

	@Override
	public User update(User user) {	
		return userRepository.save(user);
	}
	

	@Override
	public void delete(String aadhar) {
		userRepository.deleteByAadhar(aadhar);
	}

	@Override
	public List<User> read(boolean donor,String blood) {
		return userRepository.findByDonorAndBlood(donor,blood);
		
	}

	
	@Override
	public User find(String aadhar) {
		return userRepository.findByaadhar(aadhar);
	}

	@Override
	public User findUser(String registration, String pass) {
		return userRepository.findByRegistrationAndPassword(registration, pass);
	}

	@Override
	public void updateDonar(User user) {
		
		userRepository.save(user);
		
	}
	
	


	

	
	
	
	
}
