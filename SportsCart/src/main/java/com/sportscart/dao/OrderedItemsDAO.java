package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.OrderedItems;

public interface OrderedItemsDAO {
	
	public void addOrderedItems(OrderedItems orderedItems);
	public List<OrderedItems> listOrderedItems();
	public void delete(int orderedItemId);

}
