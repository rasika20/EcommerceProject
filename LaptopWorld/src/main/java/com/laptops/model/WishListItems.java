package com.laptops.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class WishListItems {
	
	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wishListItemId;
	
	@Expose
	private int wishListId;
	
	@Expose
	private int userId;
	
	@Expose
	private int productId;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="wishListId", nullable = false, updatable = false, insertable = false)
	private WishList wishList;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="userId", nullable = false, updatable = false, insertable = false)
	private User user;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="productId", nullable = false, updatable = false, insertable = false)
	private Product product;

	private double amount;

	public int getWishListItemId() {
		return wishListItemId;
	}

	public void setWishListItemId(int wishListItemId) {
		this.wishListItemId = wishListItemId;
	}

	public int getWishListId() {
		return wishListId;
	}

	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
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

	public WishList getWishList() {
		return wishList;
	}

	public void setWishList(WishList wishList) {
		this.wishList = wishList;
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

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
}
