package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.service.PersonService;

@Controller
@RequestMapping("/login")
public class PersonController {
	
	@Autowired
	private PersonService personService;
	
	// 회원가입 페이지로 이동
	@GetMapping("/add")
	public String GetCreatePerson(@ModelAttribute("Newmember") Person person) {
		return "member/AddMember";
	}
	
	// 회원가입 파라미터 값 받아옴
	@PostMapping("/add")
	public String SetCreatePerson(@ModelAttribute("Newmember")Person person, Model model) {
		personService.setCreatPerson(person);
		// 전체 id db에 값을 넣어줌
		personService.setAllMember(person);
		return "redirect:/login";
	}
	
	// 로그인 페이지로 이동
	@GetMapping
	public String SetReadPerson(@ModelAttribute("success")Person person, HttpServletRequest request) { 
		return "Login";
	}
	
	// 로그인 파라미터값 받아옴
	@PostMapping
	public String GetReadPerson(@ModelAttribute("success") Person person,
								Model model,
								Pet pet, HttpServletRequest request) {
		
		// update에서 db로 가져가 조회할 session
		

		// 1. 조원들에게 넘겨줄 객체 2. personId와 pw를 가져옴
		Person id = personService.loginSucess(person);

		if(id != null) 
		{
			HttpSession session = request.getSession();
				session.setAttribute("personkey", id);
				session.setAttribute("personId", id.getPersonId());
				
			// pet이름 정보를 가져옴
			List<Pet> petName = personService.getPetName(person);
			System.out.println("petName : " + petName);
			session.setAttribute("petName", petName);
			model.addAttribute("petName", petName);
			// pet 아이디 정보를 가져옴
			List<Pet> petId = personService.getPetId(pet);
			session.setAttribute("petId", petId);
			
			return "member/Mypage";
		}
		
		return "Login";

	}
	
	// 회원 수정 페이지로 이동
	@GetMapping("/update")
	public String GetUpdatePerson(@ModelAttribute("addmemberupdate") Person person,
								  @RequestParam("id") String id,
								  HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		System.out.println("id : " + id);


		Person u_person = personService.findPersonById(id);
		model.addAttribute("u_person", u_person);
		
		return "member/update";
	}
	
	// 회원 정보 수정 파라미터값 받아옴
	@PostMapping("/update")
	public String SetUpdatePerson(@ModelAttribute("addmemberupdate") Person person,  HttpServletRequest request) {
	    System.out.println("사용자 ID: " + person.getPersonId());
	    personService.SetUpdatePerson(person);
	    
	    // 전체 id db에 값을 삭제해줌
	    personService.getAllMember(person);
	    return "redirect:/login";
	}
	
	//회원삭제 페이지
	@RequestMapping(value="/delete")
	public String SetDeletePerson(@RequestParam("id") String personId) {
		System.out.println("person delete문 controller 도착");
		personService.SetDeletePerson(personId);
		
		
		return "redirect:/login";
	}
	
	//통합회원가입 페이지로 이동
	@GetMapping("/Allmember")
	public String GetallMember() {
		
		return "/member/AllManager";
	}
	//로그아웃 페이지
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, SessionStatus sessionStatus) {
		System.out.println("로그아웃 페이지로 이동");
		// 세션 무효시킴
	    sessionStatus.setComplete();
	    HttpSession session = request.getSession();
	    session.invalidate();

 	  // 쿠키제거
	    Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            cookie.setMaxAge(0);
	            response.addCookie(cookie);
	        }
	    }
	    return "redirect:/login";
	}
}
