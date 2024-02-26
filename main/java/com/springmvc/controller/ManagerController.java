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

import com.springmvc.domain.HospitalMember;
import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;
import com.springmvc.service.ManagerService;


@Controller
@RequestMapping("/managerlogin")
public class ManagerController 
{
	@Autowired
	ManagerService managerService;
	
	@GetMapping("/Member")
	public String showMemberPage(@ModelAttribute("productMember") ProductMember productMember, HospitalMember hospitalMember,
								@RequestParam("type") String type) {
	System.out.println("Member 페이지 요청 도착");
	System.out.println("싱글톤 type : " + type);
	Manager.getInstance().setType(productMember.getType());
	
	if(type == "p" || "p".equals(type)) {
	productMember.setType(type);
	return "/member/AddManager";
	
	} else if(type == "h" || "h".equals(type)) {
		hospitalMember.setType(type);
		return "/member/Hospitalmanager";
		
	} else {
		return "/member/Hopitalmanager";
	}
}
	@PostMapping("/productmanager")
	public String GetaddProductManager(@ModelAttribute("productMember") ProductMember productMember,
									   @ModelAttribute("hospitalMember") HospitalMember hospitalMember,
										HttpServletRequest request, Model model,
										BindingResult result) {
		Manager manager = Manager.getInstance();
		String t_type = manager.getType();
		System.out.println("로그인 확인" + t_type);
		
		// product 관리자 회원가입 하는 함수 
		if("p".equals(t_type)) {
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
		
		// 병원 manager 회원가입 하는 함수
		} else if("h".equals(t_type)) {
			
			System.out.println("여긴 병원 회원가입 : " + t_type);
			// 사업자등록증을 받아주는 함수
			MultipartFile hospitalregistrationimg = hospitalMember.getHopitalliLicenseimg();
			System.out.println("hospitalregistrationimg : " + hospitalregistrationimg);
			
		    String hospitalregistrationName = hospitalregistrationimg.getOriginalFilename();
		    System.out.println("hospitalregistrationName : " + hospitalregistrationName);
		    
		    String hospitalregistrationPath  = request.getSession().getServletContext().getRealPath("./resources/images");
		    
		    System.out.println("hospitalregistrationPath : " + hospitalregistrationPath);
		    
		    File dir = new File(hospitalregistrationPath);
		    System.out.println("dir : " + dir);
		    if (!dir.exists()) {
		        dir.mkdirs();  // 디렉토리가 존재하지 않으면, 디렉토리를 생성합니다.
		    };
		    File hospitalregistration = new File(hospitalregistrationPath, hospitalregistrationName);
			System.out.println("hospitalregistratio : " + hospitalregistration);
		    
		    try {
		    	System.out.println("파일 등록 실패?1");
		    	hospitalregistrationimg.transferTo(hospitalregistration);
		    	System.out.println("파일 등록 실패?2");
		    	hospitalMember.getHospitalregistration();
		    } catch (Exception e) {
		    	throw new RuntimeException("사업자등록증 업로드를 실패했습니다.", e);
		    }
		    System.out.println("사옵자 끝");
		    
			// 의사 자격증을 받아주는 함수
			MultipartFile hopitalliLicenseimg = hospitalMember.getHopitalliLicenseimg();
		    String hospitalliLicenseName = hopitalliLicenseimg.getOriginalFilename();
		    String hospitalliLicensePath  = request.getSession().getServletContext().getRealPath("/resources/images");
		    File hospitalliLicense = new File(hospitalliLicensePath, hospitalliLicenseName);
			
		    try {
		    	hopitalliLicenseimg.transferTo(hospitalliLicense);
		    	hospitalMember.getHospitalliLicense();
		    } catch (Exception e) {
		    	throw new RuntimeException("의사면허증  업로드를 실패했습니다.", e);
		    }
		    

		    // 세션생성
		    HttpSession session = request.getSession();
		    String type = (String)session.getAttribute("type");
		    System.out.println(type);
		    hospitalMember.setType(type);
		    
			// 병원 manager 회원가입 하는 함수
		    managerService.addHospitalManager(hospitalMember);
		    
		    // 전체 db에 데이터를 넣어주는 함수
		    managerService.H_setAllMember(hospitalMember);
		    
		    System.out.println("여긴 회원가입 로그인");
		    
			return "redirect:/login";
			
		}else {
		
		return "redirect:/login";
		}
	}

	@GetMapping("/AllLog")
	public String AllLog(@ModelAttribute("managerlogin") Manager manager )
	{
		return "/member/ManagerLogin";
	}
	
	@PostMapping("/AllLog")
	public String Managerlogin(@ModelAttribute("managerlogin") Manager manager, Model model,
	                            HttpServletRequest request) {
	    // manager 로그인 함수
	    Manager managerId = managerService.managerlogin(manager);
	    Manager.getInstance().setType(managerId.getType());
	    // 로그인에 성공한 경우
	    if (managerId != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("managerId", managerId);
	        System.out.println("sessionId : " + managerId.getPersonId());
	        model.addAttribute("managerId", managerId);
	        return "redirect:../products";
	    } else {
	        return "/member/ManagerLogin"; 
	    }
	}

	@GetMapping("/ManagerDelete")
	public String ManagerDelete(@RequestParam("managerid") String managerId) {
		// System.out.println("managerId : " + managerId);
		
		// 전체 id db 데이터를 삭제하는 함수
		managerService.AllmanagerDelete(managerId);
		// productMember 데이터를 삭제하는 함수
		managerService.P_managerDelete(managerId);
		return "/all_product/products";
	}
	
	// mypage로 이동하기 위한 값을 가져옴
	@GetMapping("/manager_page")
	public String ManagerPage(@RequestParam("personId") String personId, ProductMember productMember, Model model) {
		System.out.println("c personId : " + personId);
		productMember = managerService.managerPage(personId);
		 // System.out.println("productMemberId : " + productMember.getPersonId());
		 // System.out.println("productMembertype : " + productMember.getType());
		// product 매니저 mypage로 값 전송
		model.addAttribute("productMember", productMember);
		
		return "/member/managerMypage";
	}
	
	// update 하기 전 데이터를 받아오는 곳
	@GetMapping("/managerudpate")
	public String ManagerUpdate(@RequestParam("personId") String personId, Model model,
								@ModelAttribute("managerupdate") ProductMember productMember,
								HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		// prodcut 관리자 회원 정보를 수정하기 전 보여주는 함수
		productMember = managerService.managerUpdate(personId);
		model.addAttribute("productMember", productMember);
		session.setAttribute("type", productMember.getType());
		
		return "/member/ManagerUpdate";
	}
	
	//update 수정하기 위한 곳
	@PostMapping("/managerudpate")
	public String ManagerUpdate(@ModelAttribute("managerupdate") ProductMember productMemId, Model model ) {
		managerService.getmanagerUpdate(productMemId);
		
		// 수정 후 보여주기 위해 데이터를 가져옴
		ProductMember productMember = new ProductMember();
		productMember = managerService.setmanagerUpdate(productMemId);
		model.addAttribute("productMember", productMember);
		
		return "/member/managerMypage";
	}
	
	@GetMapping("/logout")
	public String ManagerLogout(@RequestParam("managerid") String managerid, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/login";
	}
}
