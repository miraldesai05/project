package com.sportscart.model;

import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class SubCategory {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int subcategoryId;
	private int categoryId;
	@NotEmpty(message="Subcategory Name can not be null")
	private String subcategoryName;
	@NotEmpty(message="Subcategory Description can not be null")
	private String subcategoryDesc;
	@ManyToOne
	@JoinColumn(name="categoryId",insertable=false,updatable=false,nullable=false)
	private Category category;
	@ElementCollection(targetClass=Product.class)
	@OneToMany(mappedBy="subCategory",fetch=FetchType.EAGER)
	private Set<Product> products;

	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
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
