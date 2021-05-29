package com.covidhelperapp.Dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.covidhelperapp.entity.Remdesivir;

public interface RemdesivirRespository extends CrudRepository<Remdesivir, Integer> {
	
	public List<Remdesivir> findByState(String state);
	public Remdesivir findByName(String name); 

}
