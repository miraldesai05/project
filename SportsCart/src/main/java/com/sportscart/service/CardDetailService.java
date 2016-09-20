package com.sportscart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.CardDetailDAOImpl;
import com.sportscart.model.CardDetail;

@Service
@Transactional
public class CardDetailService {
	
	@Autowired
	public CardDetailDAOImpl cardDetailDAOImpl;
	
	public void addCardDetail(CardDetail cardDetail)
	{
		cardDetailDAOImpl.addCardDetail(cardDetail);
	}

}
