package com.sportscart.dao;

import com.sportscart.model.BillingAddress;

public interface BillingAddressDAO {

	public void addBillingAddress(BillingAddressDAO billingAddress);
	public void delete(int billingAddressId);
	public BillingAddress get(int billingAddressId);
}
