package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.CartDAOImpl;
import com.sportscart.model.Cart;

@Service
@Transactional
public class CartService {

	@Autowired
	public CartDAOImpl cartDAOImpl;
	
	public Cart get(int userId)
	{
		return cartDAOImpl.get(userId);
	}
	public int cart(int userId)
	{
		return cartDAOImpl.get(userId).getCartId();
	}
	
}
