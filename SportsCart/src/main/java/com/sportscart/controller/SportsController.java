package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sportscart.model.User;
import com.sportscart.service.CartItemService;
import com.sportscart.service.CartService;
import com.sportscart.service.CategoryService;
import com.sportscart.service.ProductService;
import com.sportscart.service.SubCategoryService;
import com.sportscart.service.UserService;

@Controller
public class SportsController {
	
	@Autowired(required = true)
	private CategoryService categoryService;
	@Autowired(required = true)
	private SubCategoryService subcategoryService;
	@Autowired(required = true)
	private ProductService productService;
	@Autowired(required = true)
	private UserService userService;
	@Autowired(required = true)
	private CartService cartService;
	@Autowired(required = true)
	private CartItemService cartItemService;
	
	@RequestMapping("/")
	public String getHome(Model model){
		try {
			Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
			String username = authentication.getName();
			
			int userId=userService.getByName(username).getUserId();
			
			int cartId=cartService.get(userId).getCartId();
			model.addAttribute("cartItemList", this.cartItemService.getList(cartId));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("categoryList", this.categoryService.listCategory());
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		model.addAttribute("productList", this.productService.listProduct());
		model.addAttribute("user", new User());
		return "home";
	}
	
	@RequestMapping("/aboutus")
	public String getAboutus()
	{
		return "aboutus";
	}
	
}
