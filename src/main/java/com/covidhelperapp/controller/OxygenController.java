package com.covidhelperapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covidhelperapp.entity.Oxygen;
import com.covidhelperapp.entity.State;
import com.covidhelperapp.service.OxygenService;

@Controller
public class OxygenController {

	@Autowired
    private OxygenService oxygenService;
	
	
    @RequestMapping(value="/oxygen", method= RequestMethod.GET)
    public String oxygenForm(){
        return "oxygen";
    }
    @RequestMapping(value = "/oxygen-data",method = RequestMethod.POST)
    public String oxygenInfo(@ModelAttribute Oxygen oxygen, ModelMap model){
    	String result=oxygenService.save(oxygen);
    	model.addAttribute("result",result);
        return "oxygen";
    }
    
    @RequestMapping(value="/view-form",method=RequestMethod.GET)
    public String form() {
    	return "oxygendetail";
 
    }
    
    @RequestMapping(value="/view-data",method=RequestMethod.POST)
    public String view(@ModelAttribute State state,ModelMap model) {
    	System.out.println(state);
    	List<Oxygen> list=oxygenService.find(state.getState());
    	System.out.println(list);
    	model.addAttribute("oxygens", list);
    	return "oxygendetail";
    }
    
    

}
