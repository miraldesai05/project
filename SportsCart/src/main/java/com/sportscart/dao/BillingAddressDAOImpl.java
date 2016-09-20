package com.sportscart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.BillingAddress;

@Repository("billingAddressDAO")
public class BillingAddressDAOImpl implements BillingAddressDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public BillingAddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addBillingAddress(BillingAddress billingAddress) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
	}

	public void delete(int billingAddressId) {
		
		BillingAddress billingAddressToDelete = new BillingAddress();
		billingAddressToDelete.setBillingAddressId(billingAddressId);
		sessionFactory.getCurrentSession().delete(billingAddressToDelete);
	}

	public BillingAddress get(int billingAddressId) {
		String hql = "from BillingAddress where billingAddressID=" + "'" + billingAddressId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<BillingAddress> listBillingAddress = (List<BillingAddress>) query.list();

		if (listBillingAddress != null && !listBillingAddress.isEmpty()) {
			return listBillingAddress.get(0);
		}

		return null;
	}

}
