package com.laptops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String getHomePage() {
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
