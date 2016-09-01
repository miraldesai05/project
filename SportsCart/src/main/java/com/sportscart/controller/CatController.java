package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.Cat;
import com.sportscart.service.CatService;

@Controller
public class CatController {
	
	@Autowired(required = true)
	private CatService catService;
	
	@RequestMapping(value = "/cats", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("cat", new Cat());
		return "cat";

	}
	
	@RequestMapping(value = "/cat/add", method = RequestMethod.POST)
	public String addCat(@ModelAttribute("cat") Cat cat) {
		
		catService.addCat(cat);
		return "redirect:/";
	}

}
