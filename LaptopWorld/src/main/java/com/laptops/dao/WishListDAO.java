package com.laptops.dao;

import com.laptops.model.WishListItems;

public interface WishListDAO {
	
	public void addToWishList(WishListItems wishListItems);
	
	public String displayWishList(int userId);
	
	public void deleteFromWishList(int wishListItemId);
}
