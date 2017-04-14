package com.laptops.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.laptops.dao.CartDAO;
import com.laptops.model.CartItems;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionfactory;

	public void addToCart(CartItems cartItems) {

		sessionfactory.getCurrentSession().saveOrUpdate(cartItems);
	}

}
