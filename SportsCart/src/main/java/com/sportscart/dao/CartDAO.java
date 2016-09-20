package com.sportscart.dao;

import com.sportscart.model.Cart;

public interface CartDAO {
	
	public void addCart(Cart cart);
	public Cart get(int userId);

}
