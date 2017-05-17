package com.laptops.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.laptops.dao.SubscribeDAO;
import com.laptops.model.Subscribe;

@Repository
public class SubscribeDAOImpl implements SubscribeDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addSubscribe(Subscribe subscribe) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(subscribe);
	}

	
}
