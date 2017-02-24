package com.laptops.dao;

import java.util.List;

import com.laptops.model.Category;

public interface CategoryDAO {
	public void addCategory(Category category);

	public List<Category> fetchAllCategories();

	public Category getCategoryById(int categoryId);

	public void deleteCategory(int categoryId);
}
