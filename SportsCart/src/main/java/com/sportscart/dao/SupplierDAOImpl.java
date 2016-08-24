package com.sportscart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	
    @Autowired
	private SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() {
		List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSupplier;

	}

	public void delete(String supplierId) {
		Supplier SupplierToDelete = new Supplier();
		SupplierToDelete.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(SupplierToDelete);
		
	}

	public Supplier get(String supplierId) {
		String hql = "from Supplier where supplierID=" + "'" + supplierId + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Supplier view(String supplierId) {
			String hql="from Supplier where supplierID=" + "'+ supplierId +'";
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			
			List<Supplier> listSupplier = (List<Supplier>) query.list();
			
			if(listSupplier != null && !listSupplier.isEmpty()){
				return listSupplier.get(0);		
		}
		return null;
	}

	public Supplier getByName(String supplierName) {
		String hql = "from Supplier where supplierName=" + "'" + supplierName + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}

}
