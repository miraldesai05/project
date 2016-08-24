package com.sportscart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SportsController {
	@RequestMapping("/")
	public String getHome(){
		return "home";
	}
	
	@RequestMapping("/login")
	public String getLogin(){
		return "login";
	}
	
	@RequestMapping("/next")
	public String getNext(){
		return "next";
	}
}
