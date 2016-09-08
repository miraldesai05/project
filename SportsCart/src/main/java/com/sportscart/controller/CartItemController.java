package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sportscart.model.CartItem;
import com.sportscart.service.CartItemService;
import com.sportscart.service.UserService;

@Controller
public class CartItemController {

	@Autowired(required = true)
	private CartItemService cartItemService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/cartitem/add", method = RequestMethod.POST)
	public String addTocart(@ModelAttribute("cartItem") CartItem cartItem,@RequestParam("productId") int productId) {
		  
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		
		/*int cartid=userService.cart(userId);*/
		/*cartItem.setCartId(cartid);*/
		
		cartItem.setProductId(productId);
		cartItem.setQuantity(1);
		
		return "redirect:/";
		
								
	}
}
