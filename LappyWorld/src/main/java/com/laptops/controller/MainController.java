package com.laptops.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController
{
	@RequestMapping("/")
	public String getHomePage()
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String getAboutUsPage()
	{
		return "aboutus";
	}

}
