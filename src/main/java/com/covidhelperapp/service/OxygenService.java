package com.covidhelperapp.service;

import java.util.List;

import com.covidhelperapp.entity.Oxygen;

public interface OxygenService {
	public String save(Oxygen oxygen);
    public List<Oxygen> find(String string);
}
