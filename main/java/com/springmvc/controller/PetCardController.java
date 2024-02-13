package com.springmvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetDBConnector;
import com.springmvc.repository.PetSurgery;
import com.springmvc.repository.PetSurgeryAfter;
import com.springmvc.repository.PetVaccination;
import com.springmvc.service.PetCardService;
import com.springmvc.service.PetService;

@Controller
@RequestMapping("/login")
public class PetCardController {
	
	@Autowired
	PetCardService petCardService;

	
	// 1. 반려동물 몸무게를 넣어줌
	@GetMapping("/petcard")
	public String SetCreatPetCard(@RequestParam("petid") String petId, Model model) {
	    
		// 폼 데이터를 바인딩하는 데 사용되는 객체를 생성하고 모델에 추가
		PetWeight petWeight = new PetWeight();
		model.addAttribute("petWeight", petWeight);
		
		// 몸무게 데이터를 보여주는 함수
		List<PetWeight> listOfPetWeight = petCardService.getWeghitPetCard(petId);
		model.addAttribute("listOfPetWeight", listOfPetWeight);
		
		// 진료 기록을 보여주는 함수
		List<PetChart> listOfPetChard = petCardService.getChartPetCard(petId);
		model.addAttribute("listOfPetChard", listOfPetChard);
		
		// 예방접종 기록을 보여주는 함수
		List<PetVaccination> listOfpetVaccination = petCardService.getVaccinationPetCard(petId);
		model.addAttribute("listOfpetVaccination", listOfpetVaccination);
		
		// 수술 기록을 보여주는 함수
		List<PetSurgery> listOfPetSurgery = petCardService.getPetSurgery(petId);
		model.addAttribute("listOfPetSurgery", listOfPetSurgery);
		
		// 입원 기록을 보여주는 함수
		List<PetSurgeryAfter> listOfPetSurgeryAfter = petCardService.getPetSurgeryAfter(petId);
		model.addAttribute("listOfPetSurgeryAfter", listOfPetSurgeryAfter);
		
		
		// 동물의 정보를 가져오는 함수
		Pet petid = petCardService.getPetList(petId);
		model.addAttribute("petid", petid);
		
		return "/petcard/petcard";
	}
	
	@PostMapping("/petcard")
	public String GetWeghitPetCard(@ModelAttribute("petWeight") PetWeight petWeight, Model model) {
		System.out.println("petId" + petWeight);
		// 데이터를 넣어주는 함수
		petCardService.setWeghitPetCard(petWeight);
		

		/*
		 * List<PetCard> petcard = petCardService.getWeghitPetCard(petId);
		 * model.addAttribute("petcard", petcard);
		 */
		return "redirect:/petcard/petcard";
	}

	

}
