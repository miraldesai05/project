package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.CartItem;

public interface CartItemDAO {

	public void addToCart(CartItem cartItem);
	public List<CartItem> listCartItem();
	public CartItem get(int cartItemId);
	public List<CartItem> getList(int cartId);
	public void delete(int cartItemId);
	public void cartUpdate(int cartId);
	public List<CartItem> getListTrue(int cartId);
}
