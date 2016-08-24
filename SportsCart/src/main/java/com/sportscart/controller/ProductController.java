package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.Product;
import com.sportscart.model.SubCategory;
import com.sportscart.model.Supplier;
import com.sportscart.service.ProductService;
import com.sportscart.service.SubCategoryService;
import com.sportscart.service.SupplierService;


@Controller
public class ProductController {
	
	@Autowired(required = true)
	private SubCategoryService subcategoryService;
	@Autowired(required = true)
	private SupplierService supplierService;
	@Autowired(required = true)
	private ProductService productService;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listCategory(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productService.listProduct());
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		model.addAttribute("supplierList", this.supplierService.listSupplier());
		return "product";

	}
	
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {
		
		SubCategory subcategory = subcategoryService.getByName(product.getSubCategory().getSubcategoryName());
		subcategoryService.addSubCategory(subcategory);
		
		Supplier supplier = supplierService.getByName(product.getSupplier().getSupplierName());
		supplierService.addSupplier(supplier);
		
		product.setSubCategory(subcategory);
		product.setSupplier(supplier); 
		
		product.setSubcategoryId(subcategory.getSubcategoryId());
		product.setSupplierId(supplier.getSupplierId());
			
		productService.addProduct(product);
	
		return "redirect:/productlist";

	}
	
	@RequestMapping("product/remove/{productId}")
	public String removeProduct(@PathVariable("productId") String productId, ModelMap model) throws Exception {

		try {
			productService.delete(productId);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/productlist";
	}
	
	@RequestMapping("product/edit/{productId}")
	public String editProduct(@PathVariable("productId") String productId, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", this.productService.get(productId));
		model.addAttribute("productList", this.productService.listProduct());
		model.addAttribute("supplierList", this.supplierService.listSupplier());
		model.addAttribute("subcategoryList", this.subcategoryService.listSubCategory());
		return "product";
	}
	
	@RequestMapping("product/view/{productId}")
	public String view(@PathVariable("productId") String productId, Model model) {
		System.out.println("view");
		model.addAttribute("product", this.productService.get(productId));
		model.addAttribute("productdetails", this.productService.get(productId));
		return "viewproduct";
	}
	
	@RequestMapping("/productlist")
    public String getList(Model model){
		model.addAttribute("productList", this.productService.listProduct());
    	return "productlist";
    }


}
