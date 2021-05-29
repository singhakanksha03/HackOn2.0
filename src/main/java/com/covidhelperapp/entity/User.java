package com.covidhelperapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@Table(name = "user")
@ToString
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int idno;

  private String registration;
  private String registrationDate;
  private int age;
  private String name;
  private String dob;
  private String country;
  private String state;
  private String district;
  private String address;
  private String email;
  private String phone;

  @Column(unique = true)
  private String aadhar;

  private String blood;
  private String password;
  private boolean donor;
}
