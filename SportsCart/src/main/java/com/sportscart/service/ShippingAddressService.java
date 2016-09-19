package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.ShippingAddressDAOImpl;
import com.sportscart.model.ShippingAddress;

@Service
@Transactional
public class ShippingAddressService {
	
	@Autowired
	public ShippingAddressDAOImpl shippingAddressDAOImpl;
	
	 public void addShippingAddress(ShippingAddress shippingAddress)
	 {
		 shippingAddressDAOImpl.addShippingAddress(shippingAddress);
	 }
	 public void delete(int shippingAddressId)
	 {
		 shippingAddressDAOImpl.delete(shippingAddressId);
	 }
	 public ShippingAddress get(int shippingAddressId)
	 {
		 return shippingAddressDAOImpl.get(shippingAddressId);
	 }
}
