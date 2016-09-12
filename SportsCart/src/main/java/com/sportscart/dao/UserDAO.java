package com.sportscart.dao;

import com.sportscart.model.User;

public interface UserDAO {
	
	public void addUser(User user);
	public User getByName(String username);
}
