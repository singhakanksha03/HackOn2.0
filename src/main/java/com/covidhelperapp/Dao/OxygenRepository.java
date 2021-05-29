package com.covidhelperapp.Dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.covidhelperapp.entity.Oxygen;

public interface OxygenRepository extends CrudRepository<Oxygen, Integer> {
	
	public List<Oxygen> findByState(String state);
	public Oxygen findByName(String name);
}
