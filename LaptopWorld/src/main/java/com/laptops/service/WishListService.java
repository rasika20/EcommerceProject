package com.laptops.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.WishListDAOImpl;
import com.laptops.model.WishListItems;

@Service
@Transactional
public class WishListService {
	
	@Autowired
	private WishListDAOImpl wishListDAOImpl;
	
	public void addToWishList(WishListItems wishListItems) {
		
		wishListDAOImpl.addToWishList(wishListItems);
	}
	
	public String displayWishList(int userId) {
		
		return wishListDAOImpl.displayWishList(userId);
	}
	
	public void deleteFromWishList(int wishListItemId) {
		
		wishListDAOImpl.deleteFromWishList(wishListItemId);
	}
	
}
