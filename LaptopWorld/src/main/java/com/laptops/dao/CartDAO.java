package com.laptops.dao;

import java.util.List;

import com.laptops.model.CartItems;

public interface CartDAO {

	public void addToCart(CartItems cartItems);
	
	public String displayCart(int userId);
	
	public List<CartItems> displayCartByList(int userId);
	
	public void deteleFromCart(int cartItemId);
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity);
	
}
