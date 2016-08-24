package com.sportscart.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product {
	@Id
	private String productId;
	private String productName;
	private int price;
	private int quantity;
	@Transient
	private MultipartFile image;
	private String supplierId;
	private String subcategoryId;
	@ManyToOne
	@JoinColumn(name="subcategoryId",insertable=false,updatable=false,nullable=false)
	private SubCategory subCategory;
	@ManyToOne
	@JoinColumn(name="supplierId",insertable=false,updatable=false,nullable=false)
	private Supplier supplier;
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(String subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public SubCategory getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String toString()
	{
		return "{productId:'"+ productId +"'," + "subcategoryId:'"+ subcategoryId +"'," + "supplierId:'"+ supplierId +"'," + "productName:'"+ productName +"'," + "price:'"+ price +"'," + "quantity:'"+ quantity +"'}";
	}

}