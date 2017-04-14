package com.laptops.controller;

import java.security.Principal;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.laptops.model.CartItems;
import com.laptops.model.User;
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
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@RequestMapping("/addToCart-{productId}")
	public String addToCart(Principal p, @ModelAttribute("cartItems") CartItems cartItems,
			@PathVariable("productId") int productId) {
		
		String username=p.getName();
		System.out.println("1");
		int u = userService.getIdByUser(username).getUserId();
		System.out.println("2");
		System.out.println("userid is : " +u);
		
		
		/*cartItems.setCartId(userService.getIdByUser(username).getUserId());
		
		cartItems.setCartItemQuantity(1);
		cartItems.setAmount(productService.getProductById(productId).getProductFinalPrice());
		cartService.addToCart(cartItems);*/
		return "redirect:/";
	}

}
