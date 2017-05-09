package com.laptops.dao;

import com.laptops.model.ShippingAddress;

public interface ShippingAddressDAO {
	
	public void addShippingAddress(ShippingAddress shippingAddress);
	
	public ShippingAddress displayShippingAddress(int userId);
}
