package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDao {

	void saveCategory(Category category);

	List<Category> getAllCategories();

	Category getCategoryById(int cid);

	void deleteCategory(int cid);

	void updateCategory(Category category);

	List<Category> getAllCategory();

}
