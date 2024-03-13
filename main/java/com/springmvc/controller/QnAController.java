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

import com.mysql.cj.Session;
import com.springmvc.domain.QnA;
import com.springmvc.service.QnAService;

@Controller
@RequestMapping("/products")
public class QnAController {
	
	@Autowired
	QnAService QnAservice;
	
	//Create
	@GetMapping("qa")
	public String QnAform(@ModelAttribute("qna") QnA QnA,@RequestParam("productId") String productId,@RequestParam("personId") String personId,HttpServletRequest request)
	{
		System.out.println("Q&A 도착");
		request.setAttribute("productId", productId);
		request.setAttribute("personId", personId);
		return "all_product/QA_product";
	}
	
	@PostMapping("qa")
	public String addQnA(@ModelAttribute("qna") QnA QnA, Model model,HttpServletRequest request) 
	{
		System.out.println("post QnA 도착");
		String personId = request.getParameter("personId");
		String productId = request.getParameter("productId");
		QnA.setPersonId(personId);
		QnA.setProductId(productId);
		QnAservice.addQnA(QnA);
		return "redirect:/products/product?productId="+productId;
	}
	
	//Update
	@GetMapping("/u_qna")
	public String u_QnA(@RequestParam("QnAId") String QnAId,
							@RequestParam("productId") String productId,
							@ModelAttribute("qna") QnA qna, HttpServletRequest request, Model model) {
		System.out.println("qna 업데이트 도착");

		return "all_product/U_Q&A_product";
	}
	
	
	@PostMapping("/u_qna")
	public String setu_QnA(@ModelAttribute("qna") QnA qna,@RequestParam("QnAId") String QnAId, @RequestParam("productId") String productId,
							HttpServletRequest request, Model model) {
		
		QnAservice.updateQnA(qna,QnAId);
		System.out.println("post update 도착");
		return "redirect:/products/product?productId="+productId;
	}
	
	//Delete
	@GetMapping("/d_qna")
	public String d_QnA() {
		return null;
	}
	
	
	
	
	
}
