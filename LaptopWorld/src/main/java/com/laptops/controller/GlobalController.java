package com.laptops.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.laptops.model.Category;
import com.laptops.model.SubCategory;
import com.laptops.model.Subscribe;
import com.laptops.service.CartService;
import com.laptops.service.CategoryService;
import com.laptops.service.SubCategoryService;
import com.laptops.service.SubscribeService;
import com.laptops.service.UserService;

@ControllerAdvice
public class GlobalController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	SubscribeService subscribeService;
	
	
	@ModelAttribute("globalCategory")
	public List<Category> GlobalCategory()
	{
		return categoryService.fetchAllCategories();
	}
	
	@ModelAttribute("globalSubCategory")
	public List<SubCategory> globalSubCategory()
	{
		return subCategoryService.fetchAllSubCategories();
	}
	
	@ModelAttribute("addSubscribe")
	public void addSubscribe(@ModelAttribute("subscribe")Subscribe subscribe)
	{
		subscribeService.addSubscribe(subscribe);
	}
	
	
}
