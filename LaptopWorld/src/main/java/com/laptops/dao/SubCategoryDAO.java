package com.laptops.dao;

import java.util.List;

import com.laptops.model.SubCategory;

public interface SubCategoryDAO {
	
	public void addSubCategory(SubCategory subCategory);

	public List<SubCategory> fetchAllSubCategories();

	public SubCategory getSubCategoryById(int subCategoryId);

	public void deteleSubCategory(int subCategoryId);
}
