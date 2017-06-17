package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Transactional
@Repository

public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("PRODUCT ID BEFORE INSERTION" + product.getpId());
		session.save(product);
		System.out.println("PRODUCT ID AFTER INSERTION" + product.getpId());
		transaction.commit();
		session.close();
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.close();
		return products;
	}

	public Product getProductById(int pId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, pId);
		session.close();
		return product;
	}

	public void deleteProduct(int pId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Product product = (Product) session.get(Product.class, pId);
		session.delete(product);
		transaction.commit();
		session.close();
	}

	public void updateProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(product);
		transaction.commit();
		session.close();
	}

	public List<Product> getAllAdminProducts() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.close();
		return products;
	}

	

}
