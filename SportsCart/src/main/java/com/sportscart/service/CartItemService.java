package com.sportscart.service;

import java.util.List;

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
	public List<CartItem> listCartItem(){
		
		return cartItemDAOImpl.listCartItem();
	}
	public CartItem get(int cartItemId)
	{
		return cartItemDAOImpl.get(cartItemId);
	}
	public List<CartItem> getList(int cartId)
	{
		return cartItemDAOImpl.getList(cartId);
	}
	public void delete(int cartItemId)
	{
		cartItemDAOImpl.delete(cartItemId);
	}
}
