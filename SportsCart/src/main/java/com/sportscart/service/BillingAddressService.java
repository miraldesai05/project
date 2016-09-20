package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.BillingAddressDAOImpl;
import com.sportscart.model.BillingAddress;

@Service
@Transactional
public class BillingAddressService {

	@Autowired
	public BillingAddressDAOImpl billingAddressDAOImpl;
	
	public void addBillingAddress(BillingAddress billingAddress)
	{
		billingAddressDAOImpl.addBillingAddress(billingAddress);
	}
	public void delete(int billingAddressId)
	{
		billingAddressDAOImpl.delete(billingAddressId);
	}
	public BillingAddress get(int billingAddressId)
	{
		return billingAddressDAOImpl.get(billingAddressId);
	}
}
