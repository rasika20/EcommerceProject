package com.laptops.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.CartDAOImpl;
import com.laptops.model.CartItems;

@Service
@Transactional
public class CartService {

	@Autowired
	private CartDAOImpl cartDAOImpl;

	public void addToCart(CartItems cartItems) {
		
		cartDAOImpl.addToCart(cartItems);
	}
}
