package com.sportscart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productId;
	private String productName;
	private String productDesc;
	private int price;
	private int quantity;
	@Transient
	private MultipartFile image;
	private int supplierId;
	private int subcategoryId;
	@ManyToOne
	@JoinColumn(name="subcategoryId",insertable=false,updatable=false,nullable=false)
	private SubCategory subCategory;
	@ManyToOne
	@JoinColumn(name="supplierId",insertable=false,updatable=false,nullable=false)
	private Supplier supplier;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
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
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
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
		return "{productId:'"+ productId +"'," + "subcategoryId:'"+ subcategoryId +"'," + "supplierId:'"+ supplierId +"'," + "productName:'"+ productName +"'," + "productDesc:'"+ productDesc +"'," + "price:'"+ price +"'," + "quantity:'"+ quantity +"'," + "image:'resources/images/"+ productId +".jpg'}";
	}

}