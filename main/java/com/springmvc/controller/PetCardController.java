package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
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
import com.springmvc.domain.PetCard;
import com.springmvc.service.PetCardService;

@Controller
@RequestMapping("/login")
public class PetCardController {
	
	@Autowired
	PetCardService petCardService;
	
	// 1. 반려동물 이름과 id를 가져옴 2. 반려동물 진료 기록 가져옴
	@GetMapping("/petcard")
	public String GetCreatPetCard(@RequestParam("petId") String petId, Model model, HttpSession session) {
		
		List<PetCard> petWeghit = petCardService.getWeghitPetCard(petId);
		
		/*
		 * Pet pet = petCardService.getCreatPetCard(petId); System.out.println("pet : "
		 * + pet); model.addAttribute("pet", pet);
		 * 
		 * List<PetCard> petcards = petCardService.getReadPetCard(petId);
		 * System.out.println("petcards : " + petcards);
		 * session.setAttribute("petcards", petcards); model.addAttribute("petcards",
		 * petcards);
		 */
		
		return "/petcard/petcard";
	}
	
	// 반려동물 진료 기록을 db에 저장함 여기서 오류남
	/*
	 * @PostMapping("/hopitalpetcard") public String SetCreatPetCard(@RequestParam
	 * PetCard petCard) {; petCardService.setCreatPetCard(petCard); return
	 * "redirect:/login/petcard"; }
	 */
	

}
