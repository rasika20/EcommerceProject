package com.laptops.dao;

import java.util.List;

import com.laptops.model.Product;

public interface ProductDAO {

	public void addProduct(Product product);

	public List<Product> fetchAllProduct();

	public String fetchAllProductByJson();
	
	public String fetchFlagProductByJson();

	public Product getProductById(int productId);

	public void deleteProduct(int productId);
	
	public 
}
