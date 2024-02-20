package com.springmvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.domain.Product;

@Controller
@RequestMapping("/products")
public class ProductController {
	@RequestMapping("/product")
	public String getAllLists(Model model) {
		
		return "product/products";
	}
	
}
