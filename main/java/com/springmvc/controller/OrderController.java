package com.springmvc.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.springmvc.domain.type;
import com.springmvc.domain.Order;
import com.springmvc.domain.Person;
import com.springmvc.domain.ProductMember;
import com.springmvc.domain.ShoppingCart;
import com.springmvc.service.OrderSerivce;

@Controller
@RequestMapping("/orders")
public class OrderController {

	@Autowired
	private OrderSerivce orderSerivce;
	
	// 배송정보 확인 페이지
	@PostMapping("/o_create")
	public String OderCreate(@RequestParam("personId") String personId, HttpServletRequest request, Model model) {
		System.out.println("주문완료 페이지");
		System.out.println(personId);
			
		String shoppingCartId = request.getParameter("shoppingCartId");
		String productId = request.getParameter("productId");
		String productName = request.getParameter("productName");
		String amounts = request.getParameter("amount");
		String productPrices = request.getParameter("productPrice");
		
		int amount = Integer.parseInt(amounts);
		int productPrice = Integer.parseInt(productPrices);
		int totalprice = amount * productPrice;
		
		LocalDate currentDate = LocalDate.now();
		
		Order order = new Order();
		order.setProductId(productId);
		order.setProductName(productName);
		order.setAmount(amount);
		order.setPrice(productPrice);
		order.setTotalPrice(totalprice);
		order.setPersonId(personId);
		order.setOrderDate(currentDate);
		
		HttpSession session = request.getSession();
		session.setAttribute("order", order);
		
		orderSerivce.Ordercreate(order);
		
		//장바구니에 있는 데이터를 가져오는 함수
		Person person = orderSerivce.GetOrdercreate(personId);
		model.addAttribute("person", person);
		
		return "/all_product/ordershiping";
	}
	// 주문완료페이지
	@PostMapping("/o_complete")
	public String completeOrder(@RequestParam("personId") String personId, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order");
		System.out.println("order 넘버 : " + order.getOderNum());
		session.setAttribute("order", order);
		
		String productId = (String) order.getProductId();
		int productUnitStock = order.getAmount();
		// product테이블 재고를 관리하는 함수
		orderSerivce.SetminusProduct(productId, productUnitStock, personId);
		
		return "/all_product/Order";
	}
	
	
}
