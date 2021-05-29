package com.covidhelperapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.covidhelperapp.Dao.RemdesivirDao;
import com.covidhelperapp.entity.Remdesivir;


@Component
public class RemdesivirServiceImpl implements RemdesivirService {

	
	@Autowired
	private RemdesivirDao remedesivirDao;
	@Override
	public String save(Remdesivir remdesivir) {
		Remdesivir oxy=remedesivirDao.findName(remdesivir.getName());
		if(oxy==null) {
			return remedesivirDao.save(remdesivir);
		}
		else {
			return "Data Already Present";
		}
	}

	@Override
	public List<Remdesivir> find(String state) {
		return remedesivirDao.find(state);
	}

}
