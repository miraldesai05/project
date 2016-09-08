package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.Category;
import com.sportscart.model.SubCategory;
import com.sportscart.service.CategoryService;
import com.sportscart.service.SubCategoryService;

@Controller
public class SubCategoryController {
	
	@Autowired(required = true)
	private SubCategoryService subcategoryService;
	@Autowired(required = true)
	private CategoryService categoryService;

	@RequestMapping(value = "/subcategories", method = RequestMethod.GET)
	public String listSubCategory(Model model) {
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		model.addAttribute("categoryList", this.categoryService.listCategory());
		return "subcategory";

	}
	
	@RequestMapping(value = "/subcategory/add", method = RequestMethod.POST)
	public String addSubCategory(@ModelAttribute("subcategory") SubCategory subcategory) {
		
		Category category = categoryService.getByName(subcategory.getCategory().getCategoryName());
		categoryService.addCategory(category);
		
		subcategory.setCategory(category);
		subcategory.setCategoryId(category.getCategoryId());
		
		subcategoryService.addSubCategory(subcategory);
	
		return "redirect:/subcategorylist";

	}
	
	@RequestMapping("subcategory/remove/{subcategoryId}")
	public String removeSubCategory(@PathVariable("subcategoryId") int subcategoryId, ModelMap model) throws Exception {

		try {
			subcategoryService.delete(subcategoryId);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/subcategorylist";
	}
	
	@RequestMapping("subcategory/edit/{subcategoryId}")
	public String editSubCategory(@PathVariable("subcategoryId") int subcategoryId, Model model) {
		System.out.println("editSubCategory");
		model.addAttribute("subcategory", this.subcategoryService.get(subcategoryId));
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		model.addAttribute("categoryList", this.categoryService.listCategory());
		return "subcategory";
	}
	
	@RequestMapping("subcategory/view/{subcategoryId}")
	public String view(@PathVariable("subcategoryId") int subcategoryId, Model model) {
		System.out.println("view");
		model.addAttribute("viewsubcategory", this.subcategoryService.get(subcategoryId));
		model.addAttribute("subcategorydetails", this.subcategoryService.get(subcategoryId));
		return "viewsubcategory";
	}
	
	@RequestMapping("/subcategorylist")
    public String getList(Model model){
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
    	return "subcategorylist";
    }

}
