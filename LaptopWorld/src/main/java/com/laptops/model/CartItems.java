package com.laptops.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class CartItems {

	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartItemId;
	
	@Expose
	private int cartId;
	
	@Expose
	private int userId;
	
	@Expose
	private int productId;
	
	@Expose
	private String productName;
	
	@Expose
	@ManyToOne
	@JoinColumn(name = "cartId", nullable = false, updatable = false, insertable = false)
	private Cart cart;

	@Expose
	@ManyToOne
	@JoinColumn(name = "userId", nullable = false, updatable = false, insertable = false)
	private User user;
	
	@Expose
	@ManyToOne
	@JoinColumn(name = "productId", nullable = false, updatable = false, insertable = false)
	private Product product;
	
	@Expose
	private int cartItemQuantity;
	
	@Expose
	private double oldAmount;

	@Expose
	private double newAmount;

	
	
	public int getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCartItemQuantity() {
		return cartItemQuantity;
	}

	public void setCartItemQuantity(int cartItemQuantity) {
		this.cartItemQuantity = cartItemQuantity;
	}

	public double getOldAmount() {
		return oldAmount;
	}

	public void setOldAmount(double oldAmount) {
		this.oldAmount = oldAmount;
	}

	public double getNewAmount() {
		return newAmount;
	}

	public void setNewAmount(double newAmount) {
		this.newAmount = newAmount;
	}
	
	
}
