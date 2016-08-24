package com.sportscart.model;

/*import java.util.Set;*/

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Category {
	
	@Id
	private String categoryId;
	@NotEmpty(message="category Name can not be null")
	private String categoryName;
	@NotEmpty(message="Description can not be null")
	private String desc; 
	/*private Set<SubCategory> subCategories;*/
	
    /*public Set<SubCategory> getSubCategories() {
		return subCategories;
	}
	public void setSubCategories(Set<SubCategory> subCategories) {
		this.subCategories = subCategories;
	}*/
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
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