package com.niit.service;

import java.util.List;

import com.niit.model.Category;

public interface CategoryService {
	
List<Category>getAllCategories();

void saveCategory(Category category);

Category getCategoryById(int cid);

void deleteCategory(int cid);

void updateCategory(Category category);

List<Category> getAllCategory();
}
