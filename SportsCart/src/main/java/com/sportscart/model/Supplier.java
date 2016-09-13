package com.sportscart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Supplier {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	@NotEmpty(message="Supplier Name can not be null")
	private String supplierName;
	@NotEmpty(message="Supplier Address can not be null")
	private String supplierAddress;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public String toString()
	{
		return "{supplierId:'"+ supplierId +"'," + "supplierName:'"+ supplierName +"'," + "supplierAddress:'"+ supplierAddress +"'}";
	}
}
