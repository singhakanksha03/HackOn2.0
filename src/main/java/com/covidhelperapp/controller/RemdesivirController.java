package com.covidhelperapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covidhelperapp.entity.Remdesivir;
import com.covidhelperapp.entity.State;
import com.covidhelperapp.service.RemdesivirService;


@Controller
public class RemdesivirController {
	@Autowired
    private RemdesivirService remdesivirService;
	
	
    @RequestMapping(value="/remedesivir", method= RequestMethod.GET)
    public String remedesivirForm1(){
        return "remedesivir";
    }
    @RequestMapping(value = "/remedesivir-data",method = RequestMethod.POST)
    public String remedesivirInfo(@ModelAttribute Remdesivir remedesivir, ModelMap model){
    	String result=remdesivirService.save(remedesivir);
    	model.addAttribute("result",result);
        return "remedesivir";
    }
    
    @RequestMapping(value="/view-remedesivir-form",method=RequestMethod.GET)
    public String remedesivirForm() {
    	return "remedesivirdetail";
 
    }
    
    @RequestMapping(value="/view-remedesivir-data",method=RequestMethod.POST)
    public String remedesivirView(@ModelAttribute State state,ModelMap model) {
    	
    	List<Remdesivir> list=remdesivirService.find(state.getState());
    	
    	model.addAttribute("remedesivirs", list);
    	return "remedesivirdetail";
    }
}
