package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sportscart.model.CartItem;
import com.sportscart.service.CartItemService;
import com.sportscart.service.CartService;
import com.sportscart.service.ProductService;
import com.sportscart.service.UserService;

@Controller
public class CartItemController {

	@Autowired(required = true)
	private CartItemService cartItemService;
	
	@Autowired(required = true)
	private UserService userService;
	
	@Autowired(required = true)
	private ProductService productService;
	
	@Autowired(required = true)
	private CartService cartService;
	
	@RequestMapping(value = "/cartitem/add")
	public String addTocart(@ModelAttribute("cartItem") CartItem cartItem,@RequestParam("productId") int productId) {
		  
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		int userId=userService.getByName(username).getUserId();
		
		int cartId=cartService.get(userId).getCartId();
		
		cartItem.setCartId(cartId);
		cartItem.setProductId(productId);
		cartItem.setQuantity(1);
		String name=productService.get(productId).getProductName();
		cartItem.setProductName(name);
		int price=productService.get(productId).getPrice();
		cartItem.setPrice(price);
		
		cartItem.setTotalPrice(price*cartItem.getQuantity());
		
		cartItemService.addToCart(cartItem);
		
		
		return "redirect:/cartitemlist";							
	}
	
	@RequestMapping("cartItem/remove/{cartItemId}")
	public String removeCartItem(@PathVariable("cartItemId") int cartItemId, ModelMap model) throws Exception {

		try {
			cartItemService.delete(cartItemId);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/cartitemlist";
	}
	
	@RequestMapping("/cartitemlist")
	public String cartList(Model model)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		int userId=userService.getByName(username).getUserId();
		
		int cartId=cartService.get(userId).getCartId();
		model.addAttribute("cartItemList", this.cartItemService.getList(cartId));
		return "cartitemlist";
	}
	
}
