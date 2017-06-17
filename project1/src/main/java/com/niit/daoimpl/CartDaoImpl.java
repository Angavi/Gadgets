package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CartDao;
import com.niit.model.Cart;


@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public void addtoCart(Cart cart) {
		
	Session session = sessionFactory.openSession();
	Transaction transaction = session.beginTransaction();
	session.save(cart);
	transaction.commit();
	session.close();
}
	
	public List<Cart> getCartItems(String username) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		List<Cart> list =session.createQuery("from Cart where status='NP' and username='"+username+"'",Cart.class).getResultList();
		
		return list;
	}

	
	public void deleteCartItem(int cid) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Cart myCartItem = (Cart) session.get(Cart.class, cid);
		session.delete(myCartItem);
		transaction.commit();
		session.close();
	}
		
	

	public Cart getCartItem(int cid) {
		Session session = sessionFactory.openSession();
		Cart mycartitem = (Cart) session.get(Cart.class, cid);
		session.close();
		return mycartitem;
	}
	

	public void updateCart(Cart cart) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(cart);
		transaction.commit();
		session.close();
	}

	
	
}