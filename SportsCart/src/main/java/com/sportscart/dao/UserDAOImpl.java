package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.Cart;
import com.sportscart.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void addUser(User user) {
		
	    Session session= sessionFactory.getCurrentSession();
		Cart cart = new Cart();	
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);	
		
		user.setCartId(cart.getCartId());
		session.saveOrUpdate(user);
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);	
			
		session.flush();
	}

	/*public User get(int userId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("userId", userId));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);
	}*/

	public User getByName(int userId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("userId", userId));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);
	}
	
}
