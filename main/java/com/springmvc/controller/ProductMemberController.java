package com.springmvc.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.springmvc.domain.ProductMember;
import com.springmvc.domain.userinfo;
import com.springmvc.service.ProductMemberService;


@Controller
@RequestMapping("/managerlogin")
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
										HttpServletRequest request, Model model,
										BindingResult result) {
	    // 사업자등록증을 받아주는 함수
		MultipartFile saveCompanyRegistrationimg = productMember.getCompanyregistrationimg();
	    String companyregistrationName = saveCompanyRegistrationimg.getOriginalFilename();
	    String companyregistrationPath  = request.getSession().getServletContext().getRealPath("/resources/images");
	    File saveCompanyRegistration = new File(companyregistrationPath, companyregistrationName);

	    try {
	    	saveCompanyRegistrationimg.transferTo(saveCompanyRegistration);
	        productMember.setCompanyregistration(companyregistrationName);
	       
	    } catch (Exception e) {
	        throw new RuntimeException("사업자등록증 업로드를 실패했습니다.", e);
	    }

	    MultipartFile savecompanybusinessreportimg = productMember.getCompanyregistrationimg();
	    String companybusinessreportName = savecompanybusinessreportimg.getOriginalFilename();
	    String companybusinessreportPath = request.getSession().getServletContext().getRealPath("/resources/images");
	    File savecompanybusinessreport = new File(companybusinessreportPath, companybusinessreportName);

	    try {
	        savecompanybusinessreportimg.transferTo(savecompanybusinessreport);
	        productMember.setCompanybusinessreport(companybusinessreportName);
	    } catch (Exception e) {
	        throw new RuntimeException("통신판매업신고증 업로드를 실패했습니다.", e);
	    }
	    
	    HttpSession session = request.getSession();
	    String type = (String)session.getAttribute("type");
	    System.out.println("s_type : " + type);
	    productMember.setType(type);
		userinfo.getInstance().setPersonId(productMember.getPersonId());
		userinfo.getInstance().setType(productMember.getType());
	    
		productMemberService.getaddProductManager(productMember);
		session.setAttribute("productMember", productMember.getType());
		model.addAttribute("productMember", productMember);
		
		return "redirect:/login";
	}
	
	@GetMapping("/product")
	public String ProductPage() {
		return "/Product";
	}
	
	//경로 수정 필요함
	@GetMapping("/productlogin")
	public String GetProductManagerlogin(@ModelAttribute("productlogin") ProductMember productMember,
										 HttpServletRequest reuqest) {
		HttpSession session = reuqest.getSession();
		session.getAttribute("productMember");
		System.out.println(productMember.getPersonId());
		System.out.println(productMember.getPersonPw());
		return "Product";
	}
}
