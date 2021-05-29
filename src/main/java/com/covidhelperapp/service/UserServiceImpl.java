package com.covidhelperapp.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covidhelperapp.Dao.UserDao;
import com.covidhelperapp.entity.ElgibilityCheck;
import com.covidhelperapp.entity.User;


@Service
public class UserServiceImpl implements UserService {
  @Autowired
  private UserDao userDao;
  

  @Override
  public String saveUser(User user) {
    try {
      User u = userDao.find(user.getAadhar());
      if (u == null) {
        String dob = dobConverter(user);
		int age=calculateAge(dob);
        user.setAge(age);
        user.setDob(dob);
        user.setRegistration(generateRandomDigit(7));
        user.setRegistrationDate(dateGenerator());
        user.setDonor(false);
        userDao.create(user);
        return (
          "User created With Registration number :" + user.getRegistration()
        );
      } else {
        return (
          "User already exist with registration number :" +
          u.getRegistration()
        );

      }
    } catch (Exception e) {
      return (
        "User already exist. The registration number is " +
        user.getRegistration()
      );
    }
  }



  @Override
  public void deleteUser(String aadhar) {
    userDao.delete(aadhar);
  }

  @Override
  public User findUser(String aadhar) {
    return userDao.find(aadhar);
  }

  @Override
  public User update(User user) {
    User existingUser = userDao.find(user.getAadhar());
    existingUser.setAddress(user.getAddress());
    existingUser.setName(user.getName());
    existingUser.setPhone(user.getPhone());
    existingUser.setEmail(user.getEmail());
    existingUser.setCountry(user.getCountry());
    existingUser.setState(user.getState());
    existingUser.setDistrict(user.getDistrict());
    return userDao.update(existingUser);
  }


  public String generateRandomDigit(int n) {
    int m = (int) Math.pow(10, n - 1);
    int s = m + new Random().nextInt(9 * m);
    while (userDao.find("PMS" + s) != null) {
      s = m + new Random().nextInt(9 * m);
    }
    return "PMS" + s;
  }

  public String dateGenerator() {
    Date date = new Date();
    SimpleDateFormat DateFor = new SimpleDateFormat("dd-MM-yyyy");
    String stringDate = DateFor.format(date);
    return stringDate;
  }

  @Override
  public User loginUser(String registration, String password) {
    return userDao.findUser(registration, password);
  }

  @Override
  public List<User> findDonor(boolean donor, String blood) {
    return userDao.read(donor, blood);
  }

  @Override
  public String checkEligibility(ElgibilityCheck EC, User user) {
    if (
      EC.getCovid().equalsIgnoreCase("yes") &&
      EC.getCured().equalsIgnoreCase("yes") &&
      EC.getDays().equalsIgnoreCase("between") &&
      EC.getHaemoglobin().equalsIgnoreCase("normal") &&
      EC.getWeight().equalsIgnoreCase("proper") &&
      EC.getDisease().equalsIgnoreCase("No")
    ) {
      user.setDonor(true);
      userDao.updateDonar(user);
      return "You are Eligible as a Donor";
    } else {
      user.setDonor(false);
      userDao.updateDonar(user);
      return "You are Not Eligible as a Donor";
    }
  }

  private String dobConverter(User user) {
    String[] str = user.getDob().split("-");
    String s = str[2] + "-" + str[1] + "-" + str[0];
    return s;
  }

  private int calculateAge(String dob){
	String[] str = dob.split("-");
	int year = Integer.parseInt(str[2]);
	String[] str1 = dateGenerator().split("-");
	int currYear = Integer.parseInt(str1[2]);
	int age = currYear - year;
	return age;
  }
}
