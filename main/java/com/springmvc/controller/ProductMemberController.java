package com.springmvc.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.springmvc.domain.ProductMember;
import com.springmvc.service.ProductMemberService;


@Controller
@RequestMapping("/login")
public class ProductMemberController 
{
	@Autowired
	ProductMemberService productMemberService;
	
	@GetMapping("/Member")
	public String showMemberPage(@ModelAttribute("productMember") ProductMember productMember) {
	System.out.println("Member 페이지 요청 도착");
	return "/member/AddProductMember";
	}
	
	@PostMapping("/productmanager")
	public String GetaddProductManager(@ModelAttribute("productMember") ProductMember productMember,
										HttpServletRequest request,
										BindingResult result) {
		// 사업자등록증 받아주는 함수
		MultipartFile companyregistrationimg = productMember.getCompanyregistrationimg();
		String companyregistrationName = companyregistrationimg.getOriginalFilename();
		String companyregistrationPath  = request.getSession().getServletContext().getRealPath("/resources/images");
		File savecompanyregistration = new File(companyregistrationPath, companyregistrationName);

		if(companyregistrationimg != null && !companyregistrationimg.isEmpty()) {
		    try {
		        companyregistrationimg.transferTo(savecompanyregistration);
		        productMember.setCompanyregistrationimg(companyregistrationimg);
		    } catch (Exception e) {
		        throw new RuntimeException("사업자등록증 업로드를 실패했습니다.", e);
		    } 
		}

		// 통신판매업 신고증을 받아주는 함수
		MultipartFile companybusinessreportimg = productMember.getCompanybusinessreportimg();
		String companybusinessreportName = companybusinessreportimg.getOriginalFilename();
		String companybusinessreportPath = request.getSession().getServletContext().getRealPath("/resources/images");
		File saveompanybusinessreport = new File(companybusinessreportPath, companybusinessreportName);

		if(companybusinessreportimg != null && !companybusinessreportimg.isEmpty()) {
		    try {
		        companybusinessreportimg.transferTo(saveompanybusinessreport);
		        productMember.setCompanybusinessreportimg(companybusinessreportimg);
		    } catch (Exception e) {
		        throw new RuntimeException("통신판매업신고증 업로드를 실패했습니다.", e);
		    } 
		}
		
		productMemberService.getaddProductManager(productMember);
		return "redirect:Login";
	}
	
}
