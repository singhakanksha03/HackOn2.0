package com.covidhelperapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.covidhelperapp.entity.Oxygen;

@Component
@Transactional
public class OxygenDaoImpl implements OxygenDao {
	
	@Autowired
	private OxygenRepository oxygenRepository;
	
	@Override
	public String saveOxygen(Oxygen oxygen) {
		oxygenRepository.save(oxygen);
		String result="Oxygen Data saved successfully";
		return result;
	}

	@Override
	public List<Oxygen> find(String state) {
		List<Oxygen> list=oxygenRepository.findByState(state);
		return list;
	}
	@Override
	public Oxygen findName(String name) {
		return oxygenRepository.findByName(name);
	}

}
