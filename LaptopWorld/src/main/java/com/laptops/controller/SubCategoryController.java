package com.laptops.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.SubCategory;
import com.laptops.service.CategoryService;
import com.laptops.service.SubCategoryService;

@Controller
public class SubCategoryController {
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/subCategoryPage")
	public String getSubCategory(Model model) {
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		return "subCategories";
	}
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@ModelAttribute("subCategory") SubCategory subCategory) {
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	@RequestMapping("/editSubCategory-{subCategoryId}")
	public String getSubCategoryById(Model model, @PathVariable("subCategoryId") int subCategoryId) {
		model.addAttribute("subCategory", subCategoryService.getSubCategoryById(subCategoryId));
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "subCategories";
	}

	@RequestMapping("/deleteSubCategory-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId) {
		subCategoryService.deteleSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
	
}
