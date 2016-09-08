package com.sportscart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.Category;
import com.sportscart.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired(required = true)
	private CategoryService categoryService;

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategory(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.listCategory());
		return "category";

	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@Valid@ModelAttribute("category") Category category, BindingResult result) {
		
		if(result.hasErrors())
		{
			return "category";
		}
		else
		{
			categoryService.addCategory(category);
			return "redirect:/categorylist";
		}

	}

	@RequestMapping("category/remove/{categoryId}")
	public String removeCategory(@PathVariable("categoryId") int categoryId, ModelMap model) throws Exception {

		try {
			categoryService.delete(categoryId);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/categorylist";
	}

	@RequestMapping("category/edit/{categoryId}")
	public String editCategory(@PathVariable("categoryId") int categoryId, Model model) {
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryService.get(categoryId));
		model.addAttribute("categoryList", this.categoryService.listCategory());
		return "category";
	}
	
	@RequestMapping("category/view/{categoryId}")
	public String view(@PathVariable("categoryId") int categoryId, Model model) {
		System.out.println("view");
		model.addAttribute("viewcategory", this.categoryService.get(categoryId));
		model.addAttribute("categorydetails", this.categoryService.get(categoryId));
		return "viewcategory";
	}
	
	@RequestMapping("/categorylist")
    public String getList(Model model){
		model.addAttribute("categoryList", this.categoryService.listCategory());
    	return "categorylist";
    }	
}
