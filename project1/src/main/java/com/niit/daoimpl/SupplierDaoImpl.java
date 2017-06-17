package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.SupplierDao;

import com.niit.model.Supplier;


@Transactional
@Repository
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	private SessionFactory sessionFactory;
		
	public void saveSupplier(Supplier supplier) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		System.out.println("PRODUCT ID BEFORE INSERTION" + supplier.getSid());
		session.save(supplier);
		System.out.println("PRODUCT ID AFTER INSERTION" + supplier.getSid());
		transaction.commit();
		session.close();
	}
	

	public List<Supplier> getAllSupplier() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier> Supplier=query.list();
		session.close();
		return Supplier;
	}
	

	public Supplier getSupplierById(int id) {
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,id);
		session.close();
		return supplier;
	}

	public void deleteSupplier(int id) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Supplier supplier=(Supplier)session.get(Supplier.class,id);
		session.delete(supplier);
		transaction.commit();
		session.close();
	}


	public void updateSupplier(Supplier supplier) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.update(supplier);
		transaction.commit();
		session.close();
	}


	public List<Supplier> list() {
		return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
		
	}

}
