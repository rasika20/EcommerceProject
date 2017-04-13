package com.laptops.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.laptops.model.Product;
import com.laptops.service.BrandService;
import com.laptops.service.CategoryService;
import com.laptops.service.ProductService;
import com.laptops.service.SubCategoryService;
import com.laptops.service.SupplierService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private SubCategoryService subCategoryService;

	@Autowired
	private SupplierService supplierService;

	@Autowired
	private BrandService brandService;

	private String Data_Folder = "D:\\NewProject\\LaptopWorld\\src\\main\\webapp\\resources\\productImages\\";

	@RequestMapping("/productPage")
	public String getProductPage(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());

		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel", "Add Product");
		return "products";
	}

	@RequestMapping("/addProduct")
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("productImage") MultipartFile productImage, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("productList", productService.fetchAllProduct());
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("productListByJson", productService.fetchAllProductByJson());
			model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
			model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
			model.addAttribute("btnLabel", "Retry");
			return "products";
		}
		else {
			productService.addProduct(product);

			if (!productImage.isEmpty()) {
				try {
					byte[] bytes = productImage.getBytes();

					File directory = new File(Data_Folder + File.separator);
					if (!directory.exists()) {
						directory.mkdirs();
					}

					File imageFile = new File(directory.getAbsolutePath() + File.separator + "productImage-"
							+ product.getProductId() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
					stream.write(bytes);
					stream.close();
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("fmessage", "Image Upload Failed.try again");
				}
				model.addAttribute("filemessage", "Image Upload Successful");
			} else {
				model.addAttribute("filemessage", "Image file is required");
			}
		}
		productService.addProduct(product);
		return "redirect:/productPage";
	}
	
	@RequestMapping("/editProduct-{productId}")
	public String editProduct(Model model,@PathVariable("productId") int productId)
	{
		model.addAttribute("product", productService.getProductById(productId));
		
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel","Edit Product");
		return "products";
	}
	
	@RequestMapping("/deleteProduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/productPage";
	}

	@RequestMapping("/viewProduct-{productId}")
	public String viewProduct(@PathVariable("productId") int productId, Model model)
	{
		Product p = productService.getProductById(productId);
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonView = g.toJson(p);
		model.addAttribute("product", jsonView);
		return "viewproduct";
	}
}
