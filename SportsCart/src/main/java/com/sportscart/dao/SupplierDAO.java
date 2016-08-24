package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Supplier;

public interface SupplierDAO {
	
	public void addSupplier(Supplier supplier);
	public List<Supplier> listSupplier();
	public void delete(String supplierId);
	public Supplier get(String supplierId);
	public Supplier view(String supplierId);
	public Supplier getByName(String supplierName);

}
