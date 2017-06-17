package com.niit.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}
	
	public List<Product>getAllProducts() {
		return productDao.getAllProducts();
	}
	
	public Product getProductById(int pId) {
		return productDao.getProductById(pId);
	}
	
	public void deleteProduct(int pId) {
		productDao.deleteProduct(pId);
		
	}
	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}

	public List<Product> getAllAdminProducts() {
		return productDao.getAllAdminProducts();
	}
	}

	
	
