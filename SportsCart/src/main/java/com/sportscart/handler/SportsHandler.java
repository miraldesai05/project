package com.sportscart.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.sportscart.model.User;

@Component("sportsHandler")
public class SportsHandler {
	
	public User initFlow(){
		
		return new User();
	}
	
	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		if(user.getFullName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"fullName").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(user.getMobileNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobileNo").defaultText("Mobile number cannot be Empty").build());
			status = "failure";
		}
		if(user.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(user.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if(user.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if(user.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText("Country cannot be Empty").build());
			status = "failure";
		}
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(user.getGender()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"gender").defaultText("Select your gender").build());
			status = "failure";
		}
		if(user.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		return status;
	}

}
