package com.sportscart.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.Cat;

@Repository("catDAO")
public class CatDAOImpl implements CatDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public CatDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCat(Cat cat) {

		sessionFactory.getCurrentSession().saveOrUpdate(cat);
	}
}
