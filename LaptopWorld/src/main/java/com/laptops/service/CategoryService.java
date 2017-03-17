package com.laptops.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.CategoryDAOImpl;
import com.laptops.model.Category;

@Service
@Transactional
public class CategoryService {

	@Autowired
	private CategoryDAOImpl categoryDAOImpl;

	public void addCategory(Category category) {
		categoryDAOImpl.addCategory(category);
	}

	public List<Category> fetchAllCategories() {
		return categoryDAOImpl.fetchAllCategories();
	}

	public String fetchAllCategoriesByJson() {
		return categoryDAOImpl.fetchAllCategoriesByJson();
	}

	public Category getCategoryById(int categoryId) {
		return categoryDAOImpl.getCategoryById(categoryId);
	}

	public void deteleCategory(int categoryId) {
		categoryDAOImpl.deteleCategory(categoryId);
	}
}
