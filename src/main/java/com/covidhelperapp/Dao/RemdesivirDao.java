package com.covidhelperapp.Dao;

import java.util.List;

import com.covidhelperapp.entity.Remdesivir;

public interface RemdesivirDao {
	public String save(Remdesivir remedsivir);
    public List<Remdesivir> find(String state);
    public Remdesivir findName(String name);
}
