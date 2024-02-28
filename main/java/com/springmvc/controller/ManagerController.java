package com.springmvc.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.springmvc.domain.HospitalMember;
import com.springmvc.domain.type;
import com.springmvc.domain.ProductMember;
import com.springmvc.service.ManagerService;


@Controller
@RequestMapping("/managerlogin")
public class ManagerController 
{
	@Autowired
	ManagerService managerService;
	
	@GetMapping("/Member")
	public String showMemberPage(@ModelAttribute("productMember") ProductMember productMember, 
								 @ModelAttribute("hospitalMember") HospitalMember hospitalMember,
								 @RequestParam("type") String type, HttpServletRequest request) {
	
	System.out.println("Member 페이지 요청 도착 : " + type);

	
	HttpSession session = request.getSession();
	if(type == "p" || "p".equals(type)) {
	session.setAttribute("type", type);
	return "/member/AddManager";
	
	} else if(type == "h" || "h".equals(type)) {
		session.setAttribute("type", type);
		return "/member/Hospitalmanager";
		
	} else {
		return "/member/Allmember";
	}
}

	// manager page 회원가입 post
			@PostMapping("/productmanager")
			public String GetaddProductManager(@ModelAttribute("productMember") ProductMember productMember,
											   @ModelAttribute("hospitalMember") HospitalMember hospitalMember,
											   @RequestParam("s_file") MultipartFile s_file,
											   @RequestParam("h_file") MultipartFile h_file,
												HttpServletRequest request) 
			{	
				System.out.println("post도착");
				HttpSession session = request.getSession();
				String type = (String)session.getAttribute("type");
				System.out.println("세션에서 가져온 값 : " + type);
				
				System.out.println("s_file이름 : " + s_file);
				System.out.println("h_file이름 : " + h_file);
				
				// product 관리자 회원가입 하는 함수 
				if("p".equals(type)) {
					
				productMember.setType(type);
					
			    // 사업자등록증을 받아주는 함수
			    String s_imagePath  = request.getSession().getServletContext().getRealPath("/resources/images");
			    String saves_image = s_file.getOriginalFilename();
			    File saveimage = new File(s_imagePath, saves_image);

			    try {
			    	s_file.transferTo(saveimage);
			    	productMember.setS_image(saves_image);
			       
			    } catch (Exception e) {
			        throw new RuntimeException("사업자등록증 업로드를 실패했습니다.", e);
			    }
			    
			    //  회원가입 시 전체 데이터를 넣어주는 함수
				managerService.getaddProductManager(productMember);
				
				//personDB에 값을 넣어줌
				managerService.setAllMember(productMember);
				session.setAttribute("productMember", productMember);
				
				return "redirect:/login";
				
				// 병원 manager 회원가입 하는 함수
				} else if("h".equals(type)) {
					
					hospitalMember.setType(type);
					
					System.out.println("여긴 병원 회원가입 : " + type);
					// 사업자등록증을 받아주는 함수
					
				    String s_imageName = s_file.getOriginalFilename();
				    System.out.println("hospitalregistrationName : " + s_imageName);
				    
				    String s_imagePath  = request.getSession().getServletContext().getRealPath("/resources/images");
				    
				    System.out.println("hospitalregistrationPath : " + s_imagePath);
			
				    File saveimage = new File(s_imagePath, s_imageName);
		
				    
				    try {
				    	s_file.transferTo(saveimage);
				    	hospitalMember.setS_image(s_imageName);
				    } catch (Exception e) {
				    	throw new RuntimeException("사업자등록증 업로드를 실패했습니다.", e);
				    }
				    
				    System.out.println("사옵자 끝");
				    
					// 의사 자격증을 받아주는 함수
				    String h_imageName = h_file.getOriginalFilename();
				    String h_imagePath  = request.getSession().getServletContext().getRealPath("/resources/images");
				    File saveh_image = new File(h_imagePath, h_imageName);
					
				    try {
				    	h_file.transferTo(saveh_image);
				    	hospitalMember.setH_image(h_imageName);
				    } catch (Exception e) {
				    	throw new RuntimeException("의사면허증  업로드를 실패했습니다.", e);
				    }
				    
				    hospitalMember.setType(type);
				    
					// 병원 manager 회원가입 하는 함수
				    managerService.addHospitalManager(hospitalMember);
				    
				    // 전체 db에 데이터를 넣어주는 함수
				    managerService.H_setAllMember(hospitalMember);
				    
				  
				    System.out.println("여긴 회원가입 로그인");
				    
				    session.invalidate();
				    
					return "redirect:/login";
					
				}else {
				
				return "redirect:/login";
				}
			}
		
		

	@GetMapping("/AllLog")
	public String AllLog(@ModelAttribute("managerlogin") type manager )
	{
		return "/member/ManagerLogin";
	}
	
	@PostMapping("/AllLog")
	public String Managerlogin(@ModelAttribute("managerlogin") type manager, Model model,
	                            HttpServletRequest request) {
	    // manager 로그인 함수
	    type managerId = managerService.managerlogin(manager);

	    // 로그인에 성공한 경우
	    if (managerId != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("managerId", managerId);
	        System.out.println("sessionId : " + managerId.getPersonId());
	        
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
