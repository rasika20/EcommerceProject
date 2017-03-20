package com.laptops.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String getSubCategoryPage(Model model) {
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("btnLabel", "Add Sub-Category");
		return "subcategories";
	}
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@Valid @ModelAttribute("subCategory") SubCategory subCategory, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
			model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("btnLabel", "Retry");
			return "subcategories";
		}
		
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	@RequestMapping("/editSubCategory-{subCategoryId}")
	public String getSubCategoryById(Model model, @PathVariable("subCategoryId") int subCategoryId) {
		model.addAttribute("subCategory", subCategoryService.getSubCategoryById(subCategoryId));
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("btnLabel", "Edit Sub-category");
		return "subcategories";
	}

	@RequestMapping("/deleteSubCategory-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId) {
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
	
}
