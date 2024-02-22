package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/products")
public class ShoppingCart {

	@GetMapping("/addCart")
	public String createCart() {
		return "/all_product/shoppingcard";
	}

}
