package com.sportscart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.SupplierDAOImpl;
import com.sportscart.model.Supplier;

@Service
@Transactional
public class SupplierService {
	@Autowired
	public SupplierDAOImpl supplierDAOImpl;

	public void addSupplier(Supplier supplier) {
		supplierDAOImpl.addSupplier(supplier);
		
	}
	
	public List<Supplier> listSupplier() {
		return supplierDAOImpl.listSupplier();
	}

	public void delete(int supplierId) {

		supplierDAOImpl.delete(supplierId);
	}
	
	public Supplier get(int supplierId){
		return supplierDAOImpl.get(supplierId);
	}
	
	public Supplier view(int supplierId)
	{
		return supplierDAOImpl.get(supplierId);
	}
	
	public Supplier getByName(String supplierName)
	{
		return supplierDAOImpl.getByName(supplierName);
	}

}
