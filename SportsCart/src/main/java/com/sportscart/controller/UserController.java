package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.User;
import com.sportscart.service.UserService;

@Controller
public class UserController {

	@Autowired(required = true)
	private UserService userService;
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String user(Model model) {
		model.addAttribute("user", new User());
		return "user";
	}
	
	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user) {
		  
		    user.setRole("User");
		    user.setEnabled(true);
			userService.addUser(user);
			return "redirect:/users";		
	}
}
