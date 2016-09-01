package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.CatDAOImpl;
import com.sportscart.model.Cat;

@Service
@Transactional
public class CatService {
	
	@Autowired
	public CatDAOImpl catDAOImpl;
	
	public void addCat(Cat cat)
	{
		catDAOImpl.addCat(cat);
	}

}
