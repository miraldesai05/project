package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.OrderDetail;

@Repository("orderDetailDAO")
public class OrderDetailDAOImpl implements OrderDetailDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public OrderDetailDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addOrderDetail(OrderDetail orderDetail) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(orderDetail);
	}

	public List<OrderDetail> listOrderDetail() {
	
		@SuppressWarnings("unchecked")
		List<OrderDetail> listOrderDetail = (List<OrderDetail>) sessionFactory.getCurrentSession().createCriteria(OrderDetail.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listOrderDetail;
	}

	public void delete(int orderDetailId) {
		
		OrderDetail orderDetailToDelete = new OrderDetail();
		orderDetailToDelete.setOrderDetailId(orderDetailId);
		sessionFactory.getCurrentSession().delete(orderDetailToDelete);
		
	}

	
}
