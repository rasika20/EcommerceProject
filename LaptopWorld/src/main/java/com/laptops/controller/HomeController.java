package com.laptops.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.Subscribe;
import com.laptops.service.ProductService;
import com.laptops.service.SubscribeService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SubscribeService subscribeService;
	
	@RequestMapping("/")
	public String getHomePage(Model model) {
		model.addAttribute("products", productService.fetchFlagProductByJson());
		return "index";
	}
	
	@RequestMapping("/home")
	public String getHomePage1() {
		return "index";
	}

	@RequestMapping("/aboutus")
	public String getAboutUsPage() {
		return "aboutus";
	}
	
	@RequestMapping("/contactus")
	public String getContactUsPage() {
		return "contactus";
	}
	
	@RequestMapping("/faq")
	public String getFaqPage() {
		return "faq";
	}
	
	@RequestMapping("/shop")
	public String getShopPage(Model model) {
		
		model.addAttribute("display",productService.fetchAllProductByJson());
		return "shop";
	}
	
	@RequestMapping("/addSubscribe")
	public String addSubscribe(@Valid @ModelAttribute("subscribe") Subscribe subscribe,
			Model model) {

		subscribeService.addSubscribe(subscribe);
		return "redirect:/";
	}
	
	@RequestMapping("/terms")
	public String getTermsPage() {
		return "terms";
	}
	
	@RequestMapping("/privacypolicy")
	public String getPrivacyPolicyPage() {
		return "privacypolicy";
	}
	
	
}
