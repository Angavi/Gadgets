package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {


	void saveProduct(Product product);

	List<Product> getAllProducts();

	Product getProductById(int pId);

	void deleteProduct(int pId);

	void updateProduct(Product product);

	List<Product> getAllAdminProducts();

	




}
