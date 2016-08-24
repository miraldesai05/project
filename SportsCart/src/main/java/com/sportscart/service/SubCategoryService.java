package com.sportscart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.SubCategoryDAOImpl;
import com.sportscart.model.SubCategory;

@Service
@Transactional
public class SubCategoryService {
	
	@Autowired
	public SubCategoryDAOImpl subcategoryDAOImpl;
	
	public void addSubCategory(SubCategory subCategory)
	{
		subcategoryDAOImpl.addSubCategory(subCategory);
	}
	public List<SubCategory> listSubCategory()
	{
		return subcategoryDAOImpl.listSubCategory();
	}
	public void delete(String subcategoryId)
	{
		subcategoryDAOImpl.delete(subcategoryId);
	}
	public SubCategory get(String subcategoryId)
	{
		return subcategoryDAOImpl.get(subcategoryId);
	}
	public SubCategory view(String subcategoryId)
	{
		return subcategoryDAOImpl.get(subcategoryId);
	}
	public SubCategory getByName(String subcategoryName)
	{
		return subcategoryDAOImpl.getByName(subcategoryName);
	}
	
}
