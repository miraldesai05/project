package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.UserDAOImpl;
import com.sportscart.model.Users;

@Service
@Transactional
public class UserService {
	
	@Autowired
	public UserDAOImpl userDAOImpl;
	
	public void addUser(Users user)
	{
		userDAOImpl.addUser(user);
	}
	
}
