package com.laptops.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.CartItems;

import com.laptops.service.CartService;
import com.laptops.service.ProductService;
import com.laptops.service.UserService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	@Autowired
	private ProductService productService;

	@Autowired
	private UserService userService;

	@RequestMapping("/addToCartFromHome-{productId}")
	public String addToCartFromHome(Principal p, @ModelAttribute("cartItems") CartItems cartItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		cartItems.setCartId(u);
		cartItems.setUserId(u);
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setCartItemQuantity(1);
		cartItems.setAmount(productService.getProductById(productId).getProductFinalPrice());
		cartService.addToCart(cartItems);
		return "redirect:/";
	}
	
	@RequestMapping("/addToCartFromWishList-{productId}")
	public String addToCartFromWishList(Principal p, @ModelAttribute("cartItems") CartItems cartItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		cartItems.setCartId(u);
		cartItems.setUserId(u);
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setCartItemQuantity(1);
		cartItems.setAmount(productService.getProductById(productId).getProductFinalPrice());
		cartService.addToCart(cartItems);
		return "redirect:/displayWishList";
	}
	
	@RequestMapping("/addToCartFromProduct-{productId}")
	public String addToCartFromProduct(Principal p, @ModelAttribute("cartItems") CartItems cartItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();

		cartItems.setCartId(u);
		cartItems.setUserId(u);
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setCartItemQuantity(1);
		cartItems.setAmount(productService.getProductById(productId).getProductFinalPrice());
		cartService.addToCart(cartItems);
		return "redirect:/viewProduct-{productId}";
	}

	@RequestMapping("/displayCart")
	public String displayCart(Principal p,Model model) {
		
		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();
		
		model.addAttribute("citems", cartService.displayCart(u));
		return "cart";
	}
	
	@RequestMapping("/deleteFromCart-{cartItemId}")
	public String deleteFromCart(@PathVariable("cartItemId") int cartItemId) {
		
		cartService.deleteFromCart(cartItemId);
		return "redirect:/displayCart";
	}
	
}
