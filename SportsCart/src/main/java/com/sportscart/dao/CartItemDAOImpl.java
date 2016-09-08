package com.sportscart.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.CartItem;

@Repository("cartItemDAO")
public class CartItemDAOImpl implements CartItemDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public CartItemDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addToCart(CartItem cartItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
		
	}
}	
