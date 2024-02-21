package com.springmvc.controller;

import java.util.List;

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

import com.springmvc.domain.EApplication;
import com.springmvc.domain.ENBoard;
import com.springmvc.domain.FBoard;
import com.springmvc.domain.NBoard;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.domain.userinfo;
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
		return "redirect:/Login";
	}
	
	// 로그인 페이지로 이동
	@GetMapping
	public String SetReadPerson(@ModelAttribute("success") Person person) { 
		return "Login";
	}
	
	// 로그인 파라미터값 받아옴
	@PostMapping
	public String GetReadPerson(@ModelAttribute("success") Person person, Model model, 
								Pet pet, HttpServletRequest request) {
		
		System.out.println("아이디 확인"+person.getPersonId());
		// 조원들에게 넘겨줄 객체
		Person id = personService.loginSucess(person);
		HttpSession session = request.getSession();
		
		// 보드로 가져갈게요
		
		userinfo.getInstance().setPersonId(id.getPersonId());
		userinfo.getInstance().setPersonName(id.getPersonName());
		
		// 내가 가져갈 객체
		String personId = person.getPersonId();
		String personPw = person.getPersonPw();
		if(id != null) 
		{
			if(id.getPersonId().equals(person.getPersonId()) && id.getPersonPw().equals(person.getPersonPw())) 
			{
				session.setAttribute("personId", id.getPersonId());
				session.setAttribute("personPw", id.getPersonPw());
				session.setAttribute("id", id);
				
				// pet이름 정보를 가져옴
				List<Pet> petName = personService.getPetName(person);
				System.out.println("petName : " + petName.get(0));
				session.setAttribute("petName", petName);
				
				// pet 아이디 정보를 가져옴
				List<Pet> petId = personService.getPetId(pet);
				session.setAttribute("petId", petId);
				
				return "member/Mypage";
			}
		}
		
		return "redirect:/login";
	}
	
	// 회원 수정 페이지로 이동
	@GetMapping("/update")
	public String GetUpdatePerson(@ModelAttribute("addmemberupdate") Person person,
								  HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String personId = (String) session.getAttribute("personId");

		Person u_person = personService.findPersonById(person);
		model.addAttribute("u_person", u_person);
		 session.setAttribute("id", person);
		
		return "member/update";
	}
	
	// 회원 정보 수정 파라미터값 받아옴
	@PostMapping("/update")
	public String SetUpdatePerson(@ModelAttribute("addmemberupdate") Person person,  HttpServletRequest request) {
	    System.out.println("사용자 ID: " + person.getPersonId());
	    personService.SetUpdatePerson(person);
	    
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
	
}
