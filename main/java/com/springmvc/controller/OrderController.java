package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.domain.Manager;
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
	public String OderRead(@RequestParam("personId") String personId, Model model, HttpServletRequest request) {
		
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
	
	
	
}
