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

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;
import com.springmvc.domain.userinfo;
import com.springmvc.service.ManagerService;


@Controller
@RequestMapping("/managerlogin")
public class ManagerController 
{
	@Autowired
	ManagerService managerService;
	
	@GetMapping("/Member")
	public String showMemberPage(@ModelAttribute("productMember") ProductMember productMember,
								@RequestParam("type") String type) {
	System.out.println("Member 페이지 요청 도착");
	System.out.println("싱글톤 type : " + type);
	productMember.setType(type);

	userinfo.getInstance().setType(productMember.getType());
	
	return "/member/AddManager";
	}
	
	@PostMapping("/productmanager")
	public String GetaddProductManager(@ModelAttribute("productMember") ProductMember productMember,
										HttpServletRequest request, Model model,
										BindingResult result) {
		userinfo userInfo = userinfo.getInstance();

	
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
	    
	    // 세션생성
	    HttpSession session = request.getSession();
	    String type = (String)session.getAttribute("type");
	    System.out.println(type);
	    productMember.setType(type);
	  
	    
	    //  회원가입 시 전체 데이터를 넣어주는 함수
		managerService.getaddProductManager(productMember);
		//전체 id db에 값을 넣어줌
		managerService.setAllMember(productMember);
		session.setAttribute("productMember", productMember.getType());
		model.addAttribute("productMember", productMember);
		
		return "redirect:/login";
	}

	@GetMapping("/AllLog")
	public String AllLog(@ModelAttribute("managerlogin") Manager manager )
	{
		return "/member/ManagerLogin";
	}
	
	@PostMapping("/AllLog")
	public String Managerlogin(@ModelAttribute("managerlogin") Manager manager, Model model,
								HttpServletRequest request) {
		System.out.println("managerId : "+manager.getPersonId());
		
		// manager 로그인 함수
		Manager managerId = managerService.managerlogin(manager);
		System.out.println(managerId.getPersonPw());
		HttpSession session = request.getSession();
		session.setAttribute("managerId", managerId);
		
		model.addAttribute("managerId", managerId);
		
		return "/all_product/products";
	}
	
	@GetMapping("/ManagerDelete")
	public String ManagerDelete(@RequestParam("managerid") String managerId) {
		System.out.println("삭제도착");
		// 전체 id db 데이터를 삭제하는 함수
		managerService.AllmanagerDelete(managerId);
		// productMember 데이터를 삭제하는 함수
		managerService.P_managerDelete(managerId);
		return "/all_product/products";
	}
	
	// mypage로 이동
	@GetMapping()
	public String ManagerPage(@RequestParam("") String managerId) {
		return "";
	}
}
