package com.niit.daoimpl;

import com.niit.dao.Addressdao;
import com.niit.model.Address;




import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("addressdao")
@Transactional
public class Addressdaoimpl implements Addressdao
{
	@Autowired 
	SessionFactory sessionFactory;
	
	public Addressdaoimpl(SessionFactory sessionFactory)
	{
    	System.out.println("entered addressdaoimpl");
		this.sessionFactory=sessionFactory;
	}


	public void save(Address address) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();

		session.save(address);
		transaction.commit();
		session.close();
		}


	
}

