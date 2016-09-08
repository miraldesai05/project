package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Category;

public interface CategoryDAO {
	
	public void addCategory(Category category);
	public List<Category> listCategory();
	public void delete(int categoryId);
	public Category get(int categoryId);
	public Category view(int categoryId);
	public Category getByName(String categoryName);
}
