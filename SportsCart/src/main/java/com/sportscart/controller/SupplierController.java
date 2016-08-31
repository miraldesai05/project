package com.sportscart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sportscart.model.Supplier;
import com.sportscart.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired(required = true)
	private SupplierService supplierService;

	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String listSupplier(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierService.listSupplier());
		return "supplier";
	}

	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		supplierService.addSupplier(supplier);
		return "redirect:/supplierlist";
	}

	@RequestMapping("supplier/remove/{supplierId}")
	public String removeSupplier(@PathVariable("supplierId") String supplierId, ModelMap model) throws Exception {

		try {
			supplierService.delete(supplierId);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/supplierlist";
	}

	@RequestMapping("supplier/edit/{supplierId}")
	public String editSupplier(@PathVariable("supplierId") String supplierId, Model model) {
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierService.get(supplierId));
		model.addAttribute("supplierList", this.supplierService.listSupplier());
		return "supplier";
	}
	
	@RequestMapping("supplier/view/{supplierId}")
	public String view(@PathVariable("supplierId") String supplierId, Model model) {
		System.out.println("view");
		model.addAttribute("viewsupplier", this.supplierService.get(supplierId));
		model.addAttribute("supplierdetails", this.supplierService.get(supplierId));
		return "viewsupplier";
	}
	
	@RequestMapping("/supplierlist")
    public String getList(Model model){
		model.addAttribute("supplierList", this.supplierService.listSupplier());
    	return "supplierlist";
    }	

}
