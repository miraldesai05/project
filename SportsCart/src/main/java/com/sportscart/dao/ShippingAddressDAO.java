package com.sportscart.dao;

import com.sportscart.model.ShippingAddress;

public interface ShippingAddressDAO {
	
    public void addShippingAddress(ShippingAddress shippingAddress);
	public void delete(int shippingAddressId);
	public ShippingAddress get(int shippingAddressId);

}
