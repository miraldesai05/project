package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Category;

public interface CategoryDAO {
	
	public void addCategory(Category category);
	public List<Category> listCategory();
	public void delete(String categoryId);
	public Category get(String categoryId);
	public Category view(String categoryId);
	public Category getByName(String categoryName);
}
