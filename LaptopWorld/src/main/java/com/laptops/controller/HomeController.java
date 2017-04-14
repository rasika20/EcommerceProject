package com.laptops.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String getHomePage(Model model) {
		model.addAttribute("products", productService.fetchAllProductByJson());
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
	
}
