package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sportscart.model.User;
import com.sportscart.service.CategoryService;
import com.sportscart.service.ProductService;
import com.sportscart.service.SubCategoryService;

@Controller
public class SportsController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subcategoryService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String getHome(Model model){
		model.addAttribute("categoryList", this.categoryService.listCategory());
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		model.addAttribute("productList", this.productService.listProduct());
		model.addAttribute("user", new User());
		return "home";
	}
	
	/*@RequestMapping("/login")
	public String getLogin(){
		return "login";
	}*/
	
	/*@RequestMapping("/next")
	public String getNext(){
		return "next";
	}*/
}
