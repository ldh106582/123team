package com.springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.domain.Pet;
import com.springmvc.service.PetService;

@Controller
@RequestMapping("/pet")
public class PetController 
{
	
	@Autowired
	private PetService petService;
	
	@GetMapping
	public String GetCreatePet(@RequestParam("id") String personId, Model model) {
		// 아이디값 출력잘됨
		System.out.println("petpersonId : " + personId);
		model.addAttribute("personId", personId);
		
		return "/pet/petcreate";
	}
	
	@PostMapping("/creatpet")
	public String SetCreatePet(@ModelAttribute Pet pet, Model model) {
		System.out.println("여기 도착하나??");
		System.out.println("PetType : "+pet.getPetType());
		System.out.println("PetVarity : " + pet.getPetVarity());
		System.out.println("주인 아이디 : " + pet.getPersonId());
		System.out.println("동물생일 : " + pet.getPetBirth());
		
		Pet petname = petService.setcreatepet(pet);
		
		
		model.addAttribute("petname", petname.getPetName());
		
		return "/member/Mypage";
	}
	
	// pet update 로 이동하기 
	@GetMapping("/petread")
	public String GetUpdatePet(@RequestParam("petId") String pet, Model model) {
		System.out.println("petupodate CET 도착");
		Pet petId = petService.getUpdatePet(pet);
		model.addAttribute("petId", petId);
		return "/pet/petupdate";
	}
	//pet update 값 받아오기
	@PostMapping("/petupdate")
	public String SetUpdatePet(@ModelAttribute("pet") Pet updatepet, Model model, HttpSession session) {
		System.out.println("petupodate Post 도착");
		
		// update로 값을 넣어줌
		petService.SetUpdatePet(updatepet);
		
		// 다시 card에 보여줄 값을 받아옴
		
		Pet pet = petService.getUpdatePet(updatepet.getPetId());
		model.addAttribute("pet", pet);
		
		return "./member/Mypage";
	}
	
	// pet delete
	@GetMapping("/delete")
	public String GetDeletePet(@RequestParam("petid")String petId) {
		petService.GetDeletePet(petId);
		return "./member/Mypage";
	}
}

