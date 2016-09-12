package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value = "/cartitems", method = RequestMethod.GET)
	public String cart(Model model) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		int userId=userService.getByName(username).getUserId();
		
		int cartId=cartService.get(userId).getCartId(); 
		
		model.addAttribute("cartitem", new CartItem());
		/*model.addAttribute("cartItemList", this.cartItemService.listCartItem());*/
		model.addAttribute("cartItemList", this.cartItemService.getList(cartId));
		return "cartitem";
	}
	
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
	
	@RequestMapping("/cartitemlist")
	public String cartList(Model model)
	{
		model.addAttribute("cartItemList", this.cartItemService.listCartItem());
		return "cartitemlist";
	}
	
}
