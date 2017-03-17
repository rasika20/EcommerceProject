package com.laptops.dao;

import java.util.List;

import com.laptops.model.Brand;

public interface BrandDAO {

	public void addBrand(Brand brand);

	public List<Brand> fetchAllBrand();

	public String fetchAllBrandByJson();

	public Brand getBrandById(int brandId);

	public void deleteBrand(int brandId);
}
