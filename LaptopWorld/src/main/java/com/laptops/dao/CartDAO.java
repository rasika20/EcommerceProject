package com.laptops.dao;

import com.laptops.model.CartItems;

public interface CartDAO {

	public void addToCart(CartItems cartItems);
	
	public String displayCart(int userId);
}
