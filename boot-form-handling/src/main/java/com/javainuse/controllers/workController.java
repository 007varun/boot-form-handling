package com.javainuse.controllers;

import java.util.List;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.model.work;
import com.javainuse.service.workService;

@SuppressWarnings("unused")
@Controller
public class workController {

	@Autowired
	workService workservice;
	
	@RequestMapping("/")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}

	@RequestMapping("/welcome")
	public ModelAndView firstPageAlso() {
		return new ModelAndView("welcome");
	}

	@RequestMapping(value = "/addpub", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addpub", "work", new work());
	}

	@RequestMapping(value = "/addpub", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("work") work w) {
		
		workservice.insertWork(w);
		List<work> works = workservice.getAllWorks();
		ModelAndView model = new ModelAndView("getpub");
		model.addObject("works", works);
		return model;
	}

	@RequestMapping("/getpub")
	public ModelAndView getEmployees() {
		List<work> works = workservice.getAllWorks();
		ModelAndView model = new ModelAndView("getpub");
		model.addObject("works", works);
		return model;
	}
	
	@RequestMapping(value= "/getpubByID", method = RequestMethod.GET)
	public ModelAndView EnterID()
	{
		return new ModelAndView("enterID");//, "id" , new String());
	}
	
	@RequestMapping(value= "/getpubByID", method = RequestMethod.POST)
	public ModelAndView getByID(@RequestParam("id") String id)//@ModelAttribute("id") String id)
	{
		work w = workservice.getWorkById(id);
		List<work> works = new ArrayList<work>();
		works.add(w);
		ModelAndView model = new ModelAndView("getByID");
		model.addObject("work", works);
		return model;
	}
	
	//for topic
	@RequestMapping(value= "/getpubByTopic", method = RequestMethod.GET)
	public ModelAndView EnterTopic()
	{
		return new ModelAndView("enterTopic");//, "id" , new String());
	}
	
	@RequestMapping(value= "/getpubByTopic", method = RequestMethod.POST)
	public ModelAndView getByTopic(@RequestParam("topic") String topic)//@ModelAttribute("id") String id)
	{
		List<work> works = workservice.getWorkByTopic(topic);
		ModelAndView model = new ModelAndView("getByTopic");
		model.addObject("works", works);
		return model;
	}
	
	//for college
		@RequestMapping(value= "/getpubByCollege", method = RequestMethod.GET)
		public ModelAndView EnterCollege()
		{
			return new ModelAndView("enterCollege");//, "id" , new String());
		}
		
		@RequestMapping(value= "/getpubByCollege", method = RequestMethod.POST)
		public ModelAndView getByCollege(@RequestParam("location") String college)//@ModelAttribute("id") String id)
		{
			List<work> works = workservice.getWorkByCollege(college);
			ModelAndView model = new ModelAndView("getByCollege");
			model.addObject("works", works);
			return model;
		}
	
}
