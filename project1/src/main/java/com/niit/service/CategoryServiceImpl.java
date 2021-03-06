package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDao categoryDao;
	
public void saveCategory(Category category) {
	 categoryDao.saveCategory(category);
	}

	public List<Category> getAllCategories() {
	  return categoryDao.getAllCategories();
	}
	
	
	public Category getCategoryById(int cid) {
		return categoryDao.getCategoryById(cid);
	}
	
	public void deleteCategory(int cid) {
		categoryDao.deleteCategory(cid);
	}
	public void updateCategory(Category category) {
		categoryDao.updateCategory(category);
	}
	public List<Category> getAllCategory() {
		return categoryDao.getAllCategory();
	}
	

}
