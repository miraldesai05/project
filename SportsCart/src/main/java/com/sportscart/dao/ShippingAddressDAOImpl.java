package com.sportscart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.ShippingAddress;

@Repository("shippingAddressDAO")
public class ShippingAddressDAOImpl implements ShippingAddressDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public ShippingAddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		
	}

	public void delete(int shippingAddressId) {
		ShippingAddress shippingAddressToDelete = new ShippingAddress();
		shippingAddressToDelete.setShippingAddressId(shippingAddressId);
		sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
		
	}

	public ShippingAddress get(int shippingAddressId) {
		String hql = "from ShippindAddress where shippingAddressID=" + "'" + shippingAddressId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) query.list();

		if (listShippingAddress != null && !listShippingAddress.isEmpty()) {
			return listShippingAddress.get(0);
		}

		return null;
	}

	
}
