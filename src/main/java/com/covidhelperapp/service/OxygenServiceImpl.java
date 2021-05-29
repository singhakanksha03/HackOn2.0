package com.covidhelperapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.covidhelperapp.Dao.OxygenDao;
import com.covidhelperapp.entity.Oxygen;



@Component
public class OxygenServiceImpl implements OxygenService {
	@Autowired
	private OxygenDao oxygenDao;
	@Override
	public String save(Oxygen oxygen) {
		Oxygen oxy=oxygenDao.findName(oxygen.getName());
		if(oxy==null) {
			return oxygenDao.saveOxygen(oxygen);
		}
		else {
			return "Data Already Present";
		}
	}

	@Override
	public List<Oxygen> find(String state) {
		return oxygenDao.find(state);
	}
}
