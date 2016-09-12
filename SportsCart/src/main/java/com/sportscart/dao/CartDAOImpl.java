package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Cart get(int userId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(Cart.class);
		c.add(Restrictions.eq("userId", userId));
		@SuppressWarnings("unchecked")
		List<Cart> cart = c.list();
		session.flush();
		return cart.get(0);
	}

}
