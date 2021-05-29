package com.covidhelperapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.covidhelperapp.entity.Remdesivir;


@Component
@Transactional
public class RemdesivirDaoImpl implements RemdesivirDao {

	@Autowired
	private RemdesivirRespository remdesivirRepository;
	
	@Override
	public String save(Remdesivir remedesivir) {
		remdesivirRepository.save(remedesivir);
		String result="Remdesivir Data saved successfully";
		return result;
	}

	@Override
	public List<Remdesivir> find(String state) {
		List<Remdesivir> list=remdesivirRepository.findByState(state);
		return list;
	}
	@Override
	public Remdesivir findName(String name) {
		return remdesivirRepository.findByName(name);
	}

}
