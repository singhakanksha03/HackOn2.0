package com.covidhelperapp.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter  
@ToString
public class ElgibilityCheck {

  private String covid;
  private String cured;
  private String days;
  private String haemoglobin;
  private String weight;
  private String disease;
}
