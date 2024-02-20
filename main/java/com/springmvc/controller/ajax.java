package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/ajax")
public class ajax {
	
	@GetMapping
	@RequestMapping(value="/idconfirm", method=RequestMethod.POST)
	public String ProductMemberajax(@RequestParam("id") String id, HttpServletRequest request) {
		System.out.println("ajax도착 여긴 product");
		String productid = request.getParameter("id");
		System.out.println("productid : " + productid);
		return "";
	}
}
