package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.SubCategory;

@Repository("subcategoryDAO")
public class SubCategoryDAOImpl implements SubCategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public SubCategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
		
	}

	public List<SubCategory> listSubCategory() {
		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory = (List<SubCategory>) sessionFactory.getCurrentSession().createCriteria(SubCategory.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSubCategory;
	}

	public void delete(int subcategoryId) {
		SubCategory SubCategoryToDelete = new SubCategory();
		SubCategoryToDelete.setSubcategoryId(subcategoryId);
		sessionFactory.getCurrentSession().delete(SubCategoryToDelete);
		
	}

	public SubCategory get(int subcategoryId) {
		String hql = "from SubCategory where subcategoryID=" + "'" + subcategoryId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory = (List<SubCategory>) query.list();

		if (listSubCategory != null && !listSubCategory.isEmpty()) {
			return listSubCategory.get(0);
		}

		return null;
	}

	public SubCategory view(int subcategoryId) {
		String hql="from SubCategory where subcategoryID=" + "'+ subcategoryId +'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory = (List<SubCategory>) query.list();
		
		if(listSubCategory != null && !listSubCategory.isEmpty()){
			return listSubCategory.get(0);		}
		return null;
	}

	public SubCategory getByName(String subcategoryName) {
		String hql = "from SubCategory where subcategoryName=" + "'" + subcategoryName + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory = (List<SubCategory>) query.list();

		if (listSubCategory != null && !listSubCategory.isEmpty()) {
			return listSubCategory.get(0);
		}

		return null;
	}
	
}
