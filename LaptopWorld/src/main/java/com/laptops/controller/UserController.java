package com.laptops.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.validator.internal.util.IgnoreJava6Requirement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.User;
import com.laptops.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/loginPage")
	public String getLoginPage() {
		return "login";
	}

	@RequestMapping("/registrationPage")
	public String getRegistrationPage(Model model) {
		model.addAttribute("user", new User());
		return "registration";
	}

	@RequestMapping("/addUser")
	public String addUser(@ModelAttribute("user") User user) {
		userService.addUser(user);
		return "redirect:/loginPage";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		return "redirect:/";
	}
	
	@RequestMapping("/adminPanelPage")
	public String getAdminPanelPage()
	{
		return "adminpanel";
	}
	
	@RequestMapping("/403")
	public String get403Page()
	{
		return "403";
	}
	
	@RequestMapping("/accountProfilePage")
	public String getAccountProfilePage()
	{
		return "accountprofile";
	}
	
	@RequestMapping("/accountDetailsPage")
	public String getAccountDetailsPage()
	{
		return "accountdetails";
	}
	
	@RequestMapping("/accountShippingAddressPage")
	public String getAccountShippingAddressPage()
	{
		return "accountshippingaddress";
	}
	
	@RequestMapping("/accountEditShippingAddressPage")
	public String getAccountEditShippingAddressPage()
	{
		return "accounteditshippingaddress";
	}
	
}
