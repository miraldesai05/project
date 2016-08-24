package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.SubCategory;

public interface SubCategoryDAO {
	
	public void addSubCategory(SubCategory subCategory);
	public List<SubCategory> listSubCategory();
	public void delete(String subcategoryId);
	public SubCategory get(String subcategoryId);
	public SubCategory view(String subcategoryId);
	public SubCategory getByName(String subcategoryName);

}
