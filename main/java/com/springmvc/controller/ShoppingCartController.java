package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.springmvc.domain.Product;
import com.springmvc.service.ShoppingCartService;

@Controller
@RequestMapping("/products")
public class ShoppingCartController {

	@Autowired
	private ShoppingCartService shoppingCartService;
	
	@GetMapping("/creatCart")
	public String CreateCart(@RequestParam("product") Product product, HttpServletRequest request) {
		System.out.println("장바구니 create");
		// 장바구니 생성 함수
		HttpSession session = request.getSession();
		String  personId = (String) session.getAttribute("personId");
		
		shoppingCartService.createCart(product, personId);
		
		
		
		return "/all_product/shoppingcard";
	}
	



}
