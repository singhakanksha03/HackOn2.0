package com.covidhelperapp.service;

import java.util.List;

import com.covidhelperapp.entity.Remdesivir;

public interface RemdesivirService {
	public String save(Remdesivir remedesivir);
    public List<Remdesivir> find(String string);
}
