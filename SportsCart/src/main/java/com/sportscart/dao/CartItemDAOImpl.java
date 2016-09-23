package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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

	public List<CartItem> listCartItem() {
		@SuppressWarnings("unchecked")
		List<CartItem> listCartItem = (List<CartItem>) sessionFactory.getCurrentSession().createCriteria(CartItem.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCartItem;
	}

	public CartItem get(int cartItemId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(CartItem.class);
		c.add(Restrictions.eq("cartItemId", cartItemId));
		c.add(Restrictions.eq("flag", false));
		@SuppressWarnings("unchecked")
		List<CartItem> cartItem = c.list();
		session.flush();
		return cartItem.get(0);
	}

	public List<CartItem> getList(int cartId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(CartItem.class);
		c.add(Restrictions.eq("cartId", cartId));
		@SuppressWarnings("unchecked")
		List<CartItem> cartItem = (List<CartItem>)(c.list());
		session.flush();
		return cartItem;
		
	}

	public void delete(int cartItemId) {
		CartItem CartItemToDelete = new CartItem();
		CartItemToDelete.setCartItemId(cartItemId);
		sessionFactory.getCurrentSession().delete(CartItemToDelete);
	}

	public void cartUpdate(int cartId) {
		String hql = "update CartItem set flag = true" + "where cartID=" + "'" + cartId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();		
	}

	public List<CartItem> getListTrue(int cartId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(CartItem.class);
		c.add(Restrictions.eq("cartId", cartId));
		c.add(Restrictions.eq("flag", true));
		@SuppressWarnings("unchecked")
		List<CartItem> cartItem = (List<CartItem>)(c.list());
		session.flush();
		return cartItem;
	}
	
	
	

}	
