package com.laptops.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.ShippingAddress;
import com.laptops.service.ShippingAddressService;

@Controller
public class ShippingAddressController {
	
	@Autowired
	private ShippingAddressService shippingAddressService;
	
	@RequestMapping("/addShippingAddress")
	public String addShippingAddress(@ModelAttribute("shippingAddress") ShippingAddress shippingAddress,
			Principal p, Model model) {
		shippingAddressService.addShippingAddress(shippingAddress);
		
		return "";
	}
	
}
