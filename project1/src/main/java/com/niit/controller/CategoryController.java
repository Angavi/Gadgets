package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	 @RequestMapping("/categoryform")
	    public String getCategoryForm(Model model){
		model.addAttribute("category",new Category()); // firstname,lastname,email and phone are null
		return "categoryform";
	}
	    @RequestMapping("/category") // firstname,lastname,email and phone has some values
	    public String getUserDetails(@ModelAttribute(value="category") Category category,Model model){
	    	categoryService.saveCategory(category);
	    model.addAttribute("category",category);
 	return "redirect:/categorydetails";
 }
	    
	    
	    @RequestMapping("/categorydetails")
		public String getAllCategory(Model model) {
			
			List<Category> category = categoryService.getAllCategory();
			for (Category c : category) {
				System.out.println(c.getCid());
				System.out.println(c.getCategoryDetails());
			}
			model.addAttribute("category", category);
			return "categorydetails";
		}
	    
	    
	    @RequestMapping("/viewcategory/{cid}")
		public ModelAndView viewCategory(@PathVariable int cid, Model model) {
			ModelAndView mv = new ModelAndView("viewcategory");
			Category category = categoryService.getCategoryById(cid);
			mv.addObject("category", category);
			return mv;
		}
	    
	    
	    
	  /*  @RequestMapping("/deletecategory/{cid}") // firstname,lastname,email and phone// has some values
		public String deleteCategory(@PathVariable int cid) {
			categoryService.deleteCategory(cid);
			return "redirect:/categorydetails";

		}
		@RequestMapping("/editcategory/{cid}")
	 	public String editCategory(@PathVariable int cid, Model model){
		 Category category=categoryService.getCategoryById(cid);
		 model.addAttribute("category", category);
		 List<Category>categoryDetails=categoryService.getAllCategories();
		 model.addAttribute("categorydetails", categoryDetails);
		 return "updatecategory";
	 }
	 
		  @RequestMapping("/editcategory/updatecategory")
		 	public String updateCategory(@ModelAttribute(name = "category") Category category){
			  categoryService.updateCategory(category);
			  return "redirect:/categorydetails";
			}
	    
	    
	    */
	    
}
