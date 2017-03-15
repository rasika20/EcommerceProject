package com.laptops.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.Category;
import com.laptops.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/categoryPage")
	public String getCategory(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "categories";
	}

	@RequestMapping("/addCategory")
	public String addCategory(@ModelAttribute("category") Category category) {
		categoryService.addCategory(category);
		return "redirect:/categoryPage";
	}

	@RequestMapping("/editCategory-{categoryId}")
	public String getCategoryById(Model model, @PathVariable("categoryId") int categoryId) {
		model.addAttribute("category", categoryService.getCategoryById(categoryId));
		return "categories";
	}

	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId) {
		categoryService.deteleCategory(categoryId);
		return "redirect:/categoryPage";
	}
}
