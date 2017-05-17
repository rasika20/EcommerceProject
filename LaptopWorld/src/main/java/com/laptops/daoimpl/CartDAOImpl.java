package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.laptops.dao.CartDAO;
import com.laptops.model.CartItems;
import com.laptops.model.User;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionfactory;

	public void addToCart(CartItems cartItems) {

		sessionfactory.getCurrentSession().saveOrUpdate(cartItems);
	}

	public String displayCart(int userId) {

		List<CartItems> getList = sessionfactory.getCurrentSession().createQuery("from CartItems where userId = " + userId).getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = g.toJson(getList);
		return jsonList;
	}
	
	public List<CartItems> displayCartByList(int userId) {
		
		List<CartItems> getList = sessionfactory.getCurrentSession().createQuery("from CartItems where cartItemFlag = 'FALSE' and userId = " + userId).getResultList();
		return getList;
	}

	public void deteleFromCart(int cartItemId) {
		
		CartItems cartItems = new CartItems();
		cartItems.setCartItemId(cartItemId);
		sessionfactory.getCurrentSession().delete(cartItems);
	}
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity) {
		
		sessionfactory.getCurrentSession().createQuery("UPDATE CartItems SET cartItemQuantity="+cartItemQuantity+",cartTotalAmount="+cartTotalAmount+"where cartItemId="+cartItemId).executeUpdate();
	}
	
	public void updateCartOrders(int userId)
	{
		sessionfactory.getCurrentSession().createQuery("UPDATE CartItems set cartItemFlag='TRUE' where userId="+userId).executeUpdate();
	}
}
