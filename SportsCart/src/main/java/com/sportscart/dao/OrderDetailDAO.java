package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.OrderDetail;

public interface OrderDetailDAO {
	
	public void addOrderDetail(OrderDetail orderDetail);
	public List<OrderDetail> listOrderDetail();
	public void delete(int orderDetailId);

}
