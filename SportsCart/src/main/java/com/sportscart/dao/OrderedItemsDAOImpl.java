package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.OrderedItems;

@Repository("orderedItemsDAO")
public class OrderedItemsDAOImpl implements OrderedItemsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public OrderedItemsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addOrderedItems(OrderedItems orderedItems) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(orderedItems);
	}

	public List<OrderedItems> listOrderedItems() {
		
		@SuppressWarnings("unchecked")
		List<OrderedItems> listOrderedItems = (List<OrderedItems>) sessionFactory.getCurrentSession().createCriteria(OrderedItems.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listOrderedItems;
	}

	public void delete(int orderedItemId) {
		
		OrderedItems orderedItemsToDelete = new OrderedItems();
		orderedItemsToDelete.setOrderedItemId(orderedItemId);
		sessionFactory.getCurrentSession().delete(orderedItemsToDelete);
	}
	
	

}
