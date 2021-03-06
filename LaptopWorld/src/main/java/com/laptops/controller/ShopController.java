package com.laptops.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.service.CategoryService;
import com.laptops.service.ProductService;
import com.laptops.service.SubCategoryService;

@Controller
public class ShopController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping("/shopSubCat-{subCategoryId}")
	public String productSearchSubCatJson(@PathVariable("subCategoryId") int subCategoryId,
			Model model) {
		
		model.addAttribute("subCategory", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("display", productService.productSearchSubCatJson(subCategoryId));
		
		return "shop";
	}
	
	@RequestMapping("/shopCat-{categoryId}")
	public String productSearchCatJson(@PathVariable("categoryId") int categoryId,
			Model model) {
		
		model.addAttribute("category", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("display", productService.productSearchCatJson(categoryId));
		
		return "shop";
	}
	
	
	
}
