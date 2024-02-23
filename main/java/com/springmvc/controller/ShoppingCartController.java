package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;
import com.springmvc.service.ShoppingCartService;

@Controller
@RequestMapping("/products")
public class ShoppingCartController {

	@Autowired
	private ShoppingCartService shoppingCartService;
	
	@GetMapping("/creatCart")
	public String CreateCart(@RequestParam("productId") String productId) {
		
		// 장바구니를 생성하기 전 product db 데이터를 가져오는 함수
		Product product = shoppingCartService.createCart(productId);
		System.out.println("productId create : " + product.getProductId());
		// prduct에서 가져온 값을 장바구니db에 넣어줌
		shoppingCartService.createshoppingCart(product);
		
		return "redirect:/products";
	}
	
	@GetMapping("/readcart")
	public String ReadCart(@RequestParam(name = "personId", required = false) String personId,
							HttpServletRequest request, Model model) {
		System.out.println("장바구니 read : " + personId);
		
		// 장바구니에 있는 데이터를 가져옴
		List<ShoppingCart> shoppingCart = shoppingCartService.readCart(personId);
		
		// 장바구니를 세션에 담아줌(여러페이지 이동하면 필요할 때 당겨쓰기 위함)
		HttpSession session = request.getSession();
		session.setAttribute("shoppingCart", shoppingCart);
		
		// 장바구니를 model에 담음 view에 보여주기 위함
		model.addAttribute("shoppingCart", shoppingCart);
	
		return "/all_product/shoppingcard";
	}
	
	@GetMapping("/alldelete")
	public String AllDeleteCart(@RequestParam("shoppingcartId") int shoppingcart) {
		System.out.println("all delete : " + shoppingcart);
		shoppingCartService.alldeleteCart(shoppingcart);
		return "/all_product/products";
	}
	
	

}
