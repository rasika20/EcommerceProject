package com.laptops.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.ShippingAddressDAOImpl;
import com.laptops.model.ShippingAddress;

@Service
@Transactional
public class ShippingAddressService {
	
	@Autowired
	private ShippingAddressDAOImpl shippingAddressDAOImpl;
	
	public void addShippingAddress(ShippingAddress shippingAddress) {
		
		shippingAddressDAOImpl.addShippingAddress(shippingAddress);
	}
	
	public ShippingAddress displayShippingAddress(int userId) {
		
		return shippingAddressDAOImpl.displayShippingAddress(userId);
	}
	
}
