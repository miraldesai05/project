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
	
	/*public User get(int userId)
	{
		return userDAOImpl.get(userId);
	}*/
	
	public User getByName(int userId)
	{
		return userDAOImpl.getByName(userId);
	}
	
	public int cart(int userId)
	{
		return userDAOImpl.getByName(userId).getCartId();
	}
	
}
