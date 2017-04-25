package com.laptops.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.WishListItems;
import com.laptops.service.ProductService;
import com.laptops.service.UserService;
import com.laptops.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishListService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping("/addToWishListFromHome-{productId}")
	public String addToWishListFromHome(Principal p, @ModelAttribute("wishListItems") WishListItems wishListItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		wishListItems.setWishListId(u);
		wishListItems.setUserId(u);
		wishListItems.setProductId(productService.getProductById(productId).getProductId());
		wishListItems.setProductName(productService.getProductById(productId).getProductName());
		wishListItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		wishListItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		wishListService.addToWishList(wishListItems);
		return "redirect:/";
	}
	
	@RequestMapping("/addToWishListFromCart-{productId}")
	public String addToWishListFromCart(Principal p, @ModelAttribute("wishListItems") WishListItems wishListItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		wishListItems.setWishListId(u);
		wishListItems.setUserId(u);
		wishListItems.setProductId(productService.getProductById(productId).getProductId());
		wishListItems.setProductName(productService.getProductById(productId).getProductName());
		wishListItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		wishListItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		wishListService.addToWishList(wishListItems);
		return "redirect:/displayCart";
	}
	
	@RequestMapping("/addToWishListFromProduct-{productId}")
	public String addToWishListFromProduct(Principal p, @ModelAttribute("wishListItems") WishListItems wishListItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		wishListItems.setWishListId(u);
		wishListItems.setUserId(u);
		wishListItems.setProductId(productService.getProductById(productId).getProductId());
		wishListItems.setProductName(productService.getProductById(productId).getProductName());
		wishListItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		wishListItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		wishListService.addToWishList(wishListItems);
		return "redirect:/viewProduct-{productId}";
	}
	
	@RequestMapping("/displayWishList")
	public String displayWishList(Principal p,Model model) {
		
		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();
		
		model.addAttribute("wlitems", wishListService.displayWishList(u));
		return "wishlist";
	}
	
	@RequestMapping("/deleteFromWishList-{wishListItemId}")
	public String deleteFromWishList(@PathVariable("wishListItemId") int wishListItemId) {
		
		wishListService.deleteFromWishList(wishListItemId);
		return "redirect:/displayWishList";
	}
	
	
}
