package com.laptops.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.SubCategoryDAOImpl;
import com.laptops.model.SubCategory;

@Service
@Transactional
public class SubCategoryService {
	
	@Autowired
	private SubCategoryDAOImpl subCategoryDAOImpl;
	
	public void addSubCategory(SubCategory subCategory) {
		subCategoryDAOImpl.addSubCategory(subCategory);
	}

	public List<SubCategory> fetchAllSubCategories() {
		return subCategoryDAOImpl.fetchAllSubCategories();
	}

	public SubCategory getSubCategoryById(int subCategoryId) {
		return subCategoryDAOImpl.getSubCategoryById(subCategoryId);
	}

	public void deteleSubCategory(int subCategoryId) {
		subCategoryDAOImpl.deteleSubCategory(subCategoryId);
	}
	
}
