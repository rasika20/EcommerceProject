package com.laptops.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptops.model.Brand;
import com.laptops.service.BrandService;
import com.laptops.service.SubCategoryService;

@Controller
public class BrandController {

	@Autowired
	private BrandService brandService;

	@Autowired
	private SubCategoryService subCategoryService;

	@RequestMapping("/brandPage")
	public String getBrandPage(Model model) {
		model.addAttribute("brand", new Brand());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		/*model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());*/
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		/*model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());*/
		model.addAttribute("btnLabel", "Add Brand");
		return "brands";
	}

	@RequestMapping("/addBrand")
	public String addBrand(@Valid @ModelAttribute("brand") Brand brand, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
			/*model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());*/
			/*model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());*/
			model.addAttribute("btnLabel", "Retry");
			return "brands";
		}
		brandService.addBrand(brand);
		return "redirect:/brandPage";
	}

	@RequestMapping("/editBrand-{brandId}")
	public String editBrand(Model model, @PathVariable("brandId") int brandId) {
		model.addAttribute("brand", brandService.getBrandById(brandId));
		model.addAttribute("brandList", brandService.fetchAllBrand());
		/*model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());*/
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		/*model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());*/
		model.addAttribute("btnLabel", "Edit Brand");
		return "brands";
	}

	@RequestMapping("/deleteBrand-{brandId}")
	public String deleteBrand(@PathVariable("brandId") int brandId) {
		brandService.deleteBrand(brandId);
		return "redirect:/brandPage";
	}

}
