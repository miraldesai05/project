package com.sportscart.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportscart.model.CardDetail;

@Repository("cardDetailDAO")
public class CardDetailDAOImpl implements CardDetailDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public CardDetailDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCardDetail(CardDetail cardDetail) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(cardDetail);
		
	}

}
