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
@ToString
@Entity
@Table(name="remdesivir")
public class Remdesivir {
	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int id;
	    @Column(unique=true)
	    private String name;
	    private String phone;
	    private String country;
	    private String state;
	    private String district;
	    private String address;
}
