package com.sportscart.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.CategoryDAOImpl;
import com.sportscart.model.Category;

@Service
@Transactional
public class CategoryService {
	
	@Autowired
	public CategoryDAOImpl categoryDAOImpl;
	
	public void addCategory(Category category){
		
		categoryDAOImpl.addCategory(category);
		
	}
	
	public List<Category> listCategory(){
		
		return categoryDAOImpl.listCategory();
	}
	
	public void delete(int categoryId){
		
		categoryDAOImpl.delete(categoryId);
	}
	
	public Category get(int categoryId){
		return categoryDAOImpl.get(categoryId);
	}
	
	public Category view(int categoryId){
		return categoryDAOImpl.get(categoryId);
	}
	
	public Category getByName(String categoryName)
	{
		return categoryDAOImpl.getByName(categoryName);
	}

	
}
