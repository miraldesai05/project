package com.sportscart.model;

/*import java.util.Set;*/

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class SubCategory {
	@Id
	private String subcategoryId;
	private String categoryId;
	private String subcategoryName;
	private String subcategoryDesc;
	@ManyToOne
	@JoinColumn(name="categoryId",insertable=false,updatable=false,nullable=false)
	private Category category;
	/*private Set<Product> products;*/
	
	/*public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}*/
	public String getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(String subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getSubcategoryName() {
		return subcategoryName;
	}
	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}
	public String getSubcategoryDesc() {
		return subcategoryDesc;
	}
	public void setSubcategoryDesc(String subcategoryDesc) {
		this.subcategoryDesc = subcategoryDesc;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String toString()
	{
		return "{subcategoryId:'"+ subcategoryId +"'," + "categoryId:'"+ categoryId +"'," + "subcategoryName:'"+ subcategoryName +"'," + "subcategoryDesc:'"+ subcategoryDesc +"'}";
	}

}
