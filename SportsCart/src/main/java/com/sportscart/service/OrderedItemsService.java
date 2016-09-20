package com.sportscart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.OrderedItemsDAOImpl;
import com.sportscart.model.OrderedItems;

@Service
@Transactional
public class OrderedItemsService {
	
	@Autowired
	public OrderedItemsDAOImpl orderedItemsDAOImpl;

	public void addOrderedItems(OrderedItems orderedItems)
	{
		orderedItemsDAOImpl.addOrderedItems(orderedItems);
	}
	public List<OrderedItems> listOrderedItems()
	{
		return orderedItemsDAOImpl.listOrderedItems();
	}
	public void delete(int orderedItemId)
	{
		orderedItemsDAOImpl.delete(orderedItemId);
	}
}
