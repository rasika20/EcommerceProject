package com.laptops.service;

import java.util.List;

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

	public String displayCart(int userId) {

		return cartDAOImpl.displayCart(userId);
	}
	
	public List<CartItems> displayCartByList(int userId) {
		
		return cartDAOImpl.displayCartByList(userId);
	}

	public void deleteFromCart(int cartItemId) {

		cartDAOImpl.deteleFromCart(cartItemId);
	}
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity) {
		
		cartDAOImpl.updateCart(cartItemId, cartTotalAmount, cartItemQuantity);
	}
	
	public void updateCartOrders(int userId) {
		
		cartDAOImpl.updateCartOrders(userId);
	}
}


