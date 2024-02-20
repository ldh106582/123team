package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.service.ProductService;


@Controller
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping
	public String getProductList(Model model) {
		model.addAttribute("productList",productService.getProductsList());
		return "all_product/products";
	}
	
	@GetMapping("/product")
	public String getProduct(@RequestParam("productId") String productId,Model model) {
		model.addAttribute("product",productService.getProductById(productId));
		System.out.println("도착");
		return "all_product/product";
	}
}
