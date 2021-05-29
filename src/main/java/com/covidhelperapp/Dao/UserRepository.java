package com.covidhelperapp.Dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.covidhelperapp.entity.User;


@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    public void deleteByAadhar(String Aadhar);
    public List<User> findByDonorAndBlood(boolean donor,String blood);
    public User findByRegistrationAndPassword(String registration,String password);
    public User findByaadhar(String aadhar);
    //public User UpdateByRegistration(String registration,User user);
}
