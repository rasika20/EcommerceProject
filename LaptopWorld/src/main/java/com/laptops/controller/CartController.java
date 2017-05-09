package com.laptops.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		cartItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductFinalPrice());
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
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		cartItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductFinalPrice());
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
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductActualPrice());
		cartItems.setNewAmount(productService.getProductById(productId).getProductFinalPrice());
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductFinalPrice());
		cartService.addToCart(cartItems);
		return "redirect:/viewProduct-{productId}";
	}

	@RequestMapping("/displayCart")
	public String displayCart(Principal p,Model model) {
		
		String username = p.getName();
		int u = userService.getIdByUser(username).getUserId();
		
		model.addAttribute("product", productService.getProductById(1));
		model.addAttribute("citems", cartService.displayCart(u));
		
		List<CartItems> cart = cartService.displayCartByList(u);
		double finalPrice = 0;
		
		for(int i=0;i<cart.size();i++) {
			CartItems item = cart.get(i);
			finalPrice = finalPrice + item.getCartTotalAmount();
		}
		
		model.addAttribute("grandTotal", finalPrice);
		
		return "cart";
	}
	
	@RequestMapping("/deleteFromCart-{cartItemId}")
	public String deleteFromCart(@PathVariable("cartItemId") int cartItemId) {
		
		cartService.deleteFromCart(cartItemId);
		return "redirect:/displayCart";
	}
	
	@RequestMapping("/updateCart")
	public String updateCart(Principal p, Model model ,@ModelAttribute("cartItems") CartItems cartItems,
			HttpServletRequest request) {
		
		int u = userService.getIdByUser(p.getName()).getUserId();
		List<CartItems> cart = cartService.displayCartByList(u);
		for(CartItems i : cart) {
			int q = Integer.parseInt(request.getParameter(i.getProductName()));
			double tot = i.getNewAmount();
			double price = tot*q;
			
			cartService.updateCart(i.getCartItemId(), price, q);
		}
		return "redirect:/displayCart";
	}
	
}
