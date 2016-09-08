package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.CartItemDAOImpl;
import com.sportscart.model.CartItem;

@Service
@Transactional
public class CartItemService {
	
	@Autowired
	public CartItemDAOImpl cartItemDAOImpl;
	
	public void addToCart(CartItem cartItem)
	{
		cartItemDAOImpl.addToCart(cartItem);
	}
}
