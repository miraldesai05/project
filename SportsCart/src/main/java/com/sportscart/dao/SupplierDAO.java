package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Supplier;

public interface SupplierDAO {
	
	public void addSupplier(Supplier supplier);
	public List<Supplier> listSupplier();
	public void delete(int supplierId);
	public Supplier get(int supplierId);
	public Supplier view(int supplierId);
	public Supplier getByName(String supplierName);

}
