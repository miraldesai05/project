package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.UserDAOImpl;
import com.sportscart.model.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	public UserDAOImpl userDAOImpl;
	
	public void addUser(User user)
	{
		userDAOImpl.addUser(user);
	}
	public User getByName(String username)
	{
		return userDAOImpl.getByName(username);
	}
	public String user(String username)
	{
		return userDAOImpl.getByName(username).getUsername();
	}
	
}
