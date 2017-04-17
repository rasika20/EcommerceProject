package com.laptops.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.laptops.model.Cart;
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

	@RequestMapping("/addToCart-{productId}")
	public String addToCart(Principal p, @ModelAttribute("cartItems") CartItems cartItems,
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

	@RequestMapping("/displayCart")
	public String displayCart(Principal p,Model model) {
		
		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();
		
		model.addAttribute("citems", cartService.displayCart(u));
		return "cart";
	}

}
