package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/productform")
	public String getProductForm(Model model) {
		model.addAttribute("product", new Product()); // firstname,lastname,email
														// and phone are null
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "productform";
	}

	@RequestMapping("/products") // firstname,lastname,email and phone has some // values
	public String saveProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS");
			return "productform";
		}
		System.out.println("After validation");
		productService.saveProduct(product);

		MultipartFile image = product.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get("E:/Hibernate Programs/project1/src/main/webapp/resources/img/" + product.getpId() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/productlist";
	}

	@RequestMapping("/productlist")
	public String getAllProducts(Model model) {
		
		List<Product> products = productService.getAllProducts();
		for (Product p : products) {
			System.out.println(p.getpName());
			System.out.println(p.getpPrice());
		}
		model.addAttribute("products", products);
		return "productlist";
	}
	
	
	@RequestMapping("/adminproductlist")
	public String getAllAdminProducts(Model model) {
		
		List<Product> products = productService.getAllAdminProducts();
		for (Product p : products) {
			System.out.println(p.getpName());
			System.out.println(p.getpPrice());
		}
		model.addAttribute("products", products);
		return "adminproductlist";
	}

	@RequestMapping("/viewproduct/{pId}")
	public ModelAndView viewProduct(@PathVariable int pId, Model model) {
		ModelAndView mv = new ModelAndView("viewproduct");
		Product product = productService.getProductById(pId);
		mv.addObject("product", product);
		return mv;
	}

	@RequestMapping("/deleteproduct/{pId}") // firstname,lastname,email and phone// has some values
	public String deleteProduct(@PathVariable int pId) {
		productService.deleteProduct(pId);
		return "redirect:/productlist";

	}
	
	
	 
	
	@RequestMapping("/editproduct/{pId}")
 	public String editProduct(@PathVariable int pId, Model model){
	 Product product=productService.getProductById(pId);
	 model.addAttribute("product", product);
	 List<Category>categoryDetails=categoryService.getAllCategories();
	 model.addAttribute("categorydetails", categoryDetails);
	 return "updateproduct";
 }
 
	  @RequestMapping("/editproduct/updateproduct")
	 	public String updateProduct(@ModelAttribute(name = "product") Product product){
		  productService.updateProduct(product);
		  MultipartFile image = product.getImage();
			if (image != null && !image.isEmpty()) {
				Path path = Paths
						.get("E:/Hibernate Programs/project1/src/main/webapp/resources/img/" + product.getpId() + ".png");
				try {
					image.transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		  return "redirect:/productlist";
		}
	  
	/* @RequestMapping("/productsByCategory")
	  public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,Model model,HttpSession session){
	          session.setAttribute("categories",categoryService.getAllCategories());
	  	List<Product> products=productService.getAllProducts();
	  	//Assigning list of products to model attribute products
	  	model.addAttribute("products",products);
	  	model.addAttribute("searchCondition",searchCondition);
	  	return "productlist";
	  }*/

	  
	  @GetMapping("/get/product/list")
	  public @ResponseBody List<Product> getProductListAjex(){
		  return productService.getAllProducts();
	  }
	 
	 

}