package com.niit.controller;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Supplier;

import com.niit.service.SupplierService;

@Controller
public class SupplierController 
{
	@Autowired
	private SupplierService supplierService;
	
	
	@RequestMapping("/supplierform")
	public String getSupplierForm(Model model) {
		model.addAttribute("supplier", new Supplier()); // firstname,lastname,email
														// and phone are null
		return "supplier";
	}
		
	
	@RequestMapping("/Supplier") // firstname,lastname,email and phone has some // values
	public String saveProduct(@Valid @ModelAttribute(name ="supplier") Supplier supplier, BindingResult result) {
		supplierService.saveSupplier(supplier);
		return "redirect:supplierlist";
	 	
	}
		
	@RequestMapping("/supplierlist")
	public String getAllProducts(Model model) {
		
		List<Supplier> supplier = supplierService.getAllSupplier();
		for (Supplier s : supplier) {
			System.out.println(s.getSname());
			System.out.println(s.getSaddress());
		}
		model.addAttribute("supplier", supplier);
		return "supplierlist";
	}


	@RequestMapping("/viewsupplier/{id}")
	public ModelAndView viewSupplier(@PathVariable int id, Model model) {
		ModelAndView mv = new ModelAndView("viewsupplier");
		Supplier supplier = supplierService.getSupplierById(id);
		mv.addObject("supplier", supplier);
		return mv;
	}
	
	@RequestMapping("/deletesupplier/{id}") // firstname,lastname,email and phone// has some values
	public String deleteSupplier(@PathVariable int id) {
		supplierService.deleteSupplier(id);
		return "redirect:/supplierlist";

	}
	
	@RequestMapping("/editsupplier/{id}")
 	public String editSupplier(@PathVariable int id, Model model){
	 Supplier supplier=supplierService.getSupplierById(id);
	 model.addAttribute("supplier", supplier);
	 return "updatesupplier";
 }
 
	  @RequestMapping("/editsupplier/updatesupplier")
	 	public String updateSupplier(@ModelAttribute(name = "supplier") Supplier supplier){
		  supplierService.updateSupplier(supplier);
		 return "redirect:/supplierlist";
		}
	
	
	
}