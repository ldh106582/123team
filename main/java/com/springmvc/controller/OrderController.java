package com.springmvc.controller;

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
import com.springmvc.domain.Manager;
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
	
	@GetMapping("/o_shipping")
	public String OderRead(@RequestParam("personId") String personId, Model model, HttpServletRequest request, Order order) {
		
		// 고객의 정보를 구분하는 것을 싱글톤으로 불러옴
		String type = Manager.getInstance().getType();
		System.out.println("orderread : " + type);
		if(type == null) {
		// 개별 고객의 정보를 가져오는 함수
			List<Person> listOfperson = orderSerivce.P_OderRead(personId);
			model.addAttribute("listOfperson", listOfperson.get(0));
		} else {
			// 관리자의 정보를 가져오는 함수
			List<ProductMember> listOfproduct = orderSerivce.M_OderRead(personId);
			model.addAttribute("listOfperson", listOfproduct.get(0));
		}
	
		return "/all_product/ordershiping";
	}
	
	@GetMapping("/o_reading")
	public String GetParameter(@RequestParam("personId") String personId, Model model, HttpServletRequest request, Order order) {
		// 장바구니에서 받아온 데이터를 order db에 넣음
		String productId = request.getParameter("productId");
		String productName = request.getParameter("productName");
		String f_amount = request.getParameter("amount");
		String f_productPrice = request.getParameter("productPrice");
		System.out.println(productId);
		System.out.println(f_amount);
		System.out.println(f_productPrice);
		
		int amount = Integer.parseInt(f_amount);
		int productPrice = Integer.parseInt(f_productPrice);
		int totalPrice = amount * productPrice;
		// String personid = request.getParameter("personId");
		
		// 날짜를 반환함 orderdate
		LocalDateTime time = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = LocalDateTime.now().format(formatter);
	
	 	order.setProductId(productId);
	 	order.setProductName(productName);
	 	order.setAmount(amount);
	 	order.setPrice(productPrice);
	 	order.setTotalPrice(totalPrice);
	 	order.setOrderDate(formattedDate);
		order.setPersonId(personId);
	  	
		HttpSession session = request.getSession();
		session.setAttribute("order", order);
		return "/all_product/ordershiping";
	}
	
	@PostMapping("/o_create")
	public String OderCreate(@RequestParam("personId") String personId, HttpServletRequest request, Model model) {
		System.out.println("주문완료 페이지");
		
		String personName = request.getParameter("personName");
		String personPhone = request.getParameter("personPhone");
		String personAddress = request.getParameter("personAddress");
		
		// 장바구니에서 받아온 데이터를 order db에 넣음
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order"); 
		System.out.println(order.getPersonId());
		System.out.println(order.getAmount());
		System.out.println(order.getOrderDate());
		System.out.println(order.getPersonName());
		System.out.println(order.getTotalPrice());
		orderSerivce.Ordercreate(order);
		
		//장바구니에 있는 데이터를 가져오는 함수
		List<Order> listOfOrder = orderSerivce.GetOrdercreate(personId);
		model.addAttribute("listOfOrder", listOfOrder);
		
		return "/all_product/Order";
	}
	
	
}
