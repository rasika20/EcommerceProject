package com.laptops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String getHomePage() {
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
	
	@RequestMapping("/demo")
	public String getDemoPage() {
		return "demo";
	}
	
}
