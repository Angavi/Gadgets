package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CustomerDao;
import com.niit.model.Authorities;
import com.niit.model.Customer;
import com.niit.model.Users;



@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;
	public void saveCustomer(Customer customer) {
		
		Users users=customer.getUsers();
		users.setEnabled(true);
		
		
		Authorities authorities=new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USERS");
		
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(authorities);
		session.save(customer);
		transaction.commit();
		session.close();
	}

	public List<Customer> getcustomer() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customer=query.list();
		session.close();
		return customer;
	}
	public List<Customer> getcustomer(String username) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customer=query.list();
		session.close();
		return customer;
	}
}

	