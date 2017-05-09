package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.laptops.dao.ShippingAddressDAO;
import com.laptops.model.ShippingAddress;

@Repository
public class ShippingAddressDAOImpl implements ShippingAddressDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void addShippingAddress(ShippingAddress shippingAddress) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}

	public ShippingAddress displayShippingAddress(int userId) {
		
		List<ShippingAddress> shippingAddress = sessionFactory.getCurrentSession().createQuery("from ShippingAddress where userId = "+userId).getResultList();
		return null;
	}

}
