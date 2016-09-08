package com.sportscart.dao;

import com.sportscart.model.User;

public interface UserDAO {
	
	public void addUser(User user);
	/*public User get(int userId);*/
	public User getByName(int userId);
}
