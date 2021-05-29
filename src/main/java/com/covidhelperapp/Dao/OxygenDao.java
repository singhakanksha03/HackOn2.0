package com.covidhelperapp.Dao;

import java.util.List;

import com.covidhelperapp.entity.Oxygen;

public interface OxygenDao {
	public String saveOxygen(Oxygen oxygen);
    public List<Oxygen> find(String state);
    public Oxygen findName(String name);
}
