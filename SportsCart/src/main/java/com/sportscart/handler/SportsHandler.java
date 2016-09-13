package com.sportscart.handler;

import org.springframework.stereotype.Component;

import com.sportscart.model.User;

@Component("sportsHandler")
public class SportsHandler {
	
	public User initFlow(){
		
		return new User();
	}

}
