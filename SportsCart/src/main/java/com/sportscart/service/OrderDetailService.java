package com.sportscart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.OrderDetailDAOImpl;
import com.sportscart.model.OrderDetail;

@Service
@Transactional
public class OrderDetailService {

	@Autowired
	public OrderDetailDAOImpl orderDetailDAOImpl;
	
	public void addOrderDetail(OrderDetail orderDetail)
	{
		orderDetailDAOImpl.addOrderDetail(orderDetail);
	}
	public List<OrderDetail> listOrderDetail()
	{
		return orderDetailDAOImpl.listOrderDetail();
	}
	public void delete(int orderDetailId)
	{
		orderDetailDAOImpl.delete(orderDetailId);
	}
}
