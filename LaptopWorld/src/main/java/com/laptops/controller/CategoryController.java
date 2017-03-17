package com.laptops.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String getCategoryPage(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("btnLabel", "Add Category");
		return "categories";
	}

	@RequestMapping("/addCategory")
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("btnLabel", "Retry");
			return "categories";
		}

		categoryService.addCategory(category);
		return "redirect:/categoryPage";
	}

	@RequestMapping("/editCategory-{categoryId}")
	public String getCategoryById(Model model, @PathVariable("categoryId") int categoryId) {
		model.addAttribute("category", categoryService.getCategoryById(categoryId));
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("btnLabel", "Edit Category");
		return "categories";
	}

	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId) {
		categoryService.deteleCategory(categoryId);
		return "redirect:/categoryPage";
	}
}
