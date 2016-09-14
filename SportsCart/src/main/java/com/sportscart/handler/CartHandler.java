package com.sportscart.handler;

import org.springframework.stereotype.Component;

import com.sportscart.model.CartItem;

@Component("cartHandler")
public class CartHandler {

	public CartItem initFlow(){
		
		return new CartItem();
	}
}
