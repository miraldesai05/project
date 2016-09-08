package com.sportscart.model;

import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Category {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryId;
	@NotEmpty(message="category Name can not be null")
	private String categoryName;
	@NotEmpty(message="Description can not be null")
	private String desc; 
	@ElementCollection(targetClass=SubCategory.class)
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	private Set<SubCategory> subCategory;
	
    public Set<SubCategory> getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(Set<SubCategory> subCategory) {
		this.subCategory = subCategory;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String categoryDesc) {
		this.desc = categoryDesc;
	}
    public String toString()
	{
		return "{categoryId:'"+ categoryId +"'," + "categoryName:'"+ categoryName +"'," + "desc:'"+ desc +"'}";
	}
		
}