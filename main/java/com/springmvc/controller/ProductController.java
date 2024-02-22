package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.domain.Product;
import com.springmvc.service.ProductService;


@Controller
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
//	R
	@RequestMapping
	public String getProductList(Model model) {
		model.addAttribute("productList",productService.getProductsList());
		return "all_product/products";
	}
	
	@GetMapping("/product")
	public String getProduct(@RequestParam("productId") String productId,Model model) {
		model.addAttribute("product",productService.getProductById(productId));
		return "all_product/product";
	}
	
// C
	@GetMapping("add")
	public String addProductForm(@ModelAttribute("product") Product product) {
		return "all_product/addProduct";
	}
	
	@PostMapping("add")
	public String addProductProccess(@ModelAttribute("product") Product product,Model model) {
		productService.addProduct(product);
		return "redirect:/products";
	}
// U
	@GetMapping("update")
	public String updateProductForm(@ModelAttribute("product") Product product,@RequestParam("productId") String productId,Model model) {
		model.addAttribute("aproduct",productService.getProductById(productId));
		return "all_product/updateProduct";
	}
	
	@PostMapping("update")
	public String updateProductProccess(@ModelAttribute("product") Product product,HttpServletRequest request) {
		String productId = request.getParameter("productId");
		productService.updateProduct(product,productId);
		return "redirect:/products/product?productId="+productId;
	}
// D
	@GetMapping("delete")
	public String deleteProduct(@RequestParam("productId") String producId) {
		productService.deleteProduct(producId);
		return "redirect:/products";
	}
}
