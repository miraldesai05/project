package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCategory(Category category) {

		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> listCategory() {

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}
	public void delete(String categoryId) {
		Category CategoryToDelete = new Category();
		CategoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(CategoryToDelete);
	}

	public Category get(String categoryId) {
		String hql = "from Category where categoryID=" + "'" + categoryId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}

		return null;
	}

	
	public Category view(String categoryId) {
		String hql="from Category where categoryID=" + "'+ categoryId +'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if(listCategory != null && !listCategory.isEmpty()){
			return listCategory.get(0);		}
		return null;
	}

	public Category getByName(String categoryName) {
		String hql = "from Category where categoryName=" + "'" + categoryName + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}
		
	}

