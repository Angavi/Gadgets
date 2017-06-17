package com.niit.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.service.CustomerService;




@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model) {
		
		
		model.addAttribute("customer", new Customer());
		return "registrationpage";

	}

	@RequestMapping("/register")
	public String register(@Valid @ModelAttribute("customer") Customer customer, Model model, BindingResult result) {

		if(result.hasErrors())
			return "registration page";
		try{
		customerService.saveCustomer(customer);
	}
		catch(Exception e){
			
		}
		model.addAttribute("registrationSuccess", "Registered Successfully... please login..");

		return "login";
	}

}

	
	

