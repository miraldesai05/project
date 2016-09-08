package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.SubCategory;

public interface SubCategoryDAO {
	
	public void addSubCategory(SubCategory subCategory);
	public List<SubCategory> listSubCategory();
	public void delete(int subcategoryId);
	public SubCategory get(int subcategoryId);
	public SubCategory view(int subcategoryId);
	public SubCategory getByName(String subcategoryName);

}
