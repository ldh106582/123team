package com.springmvc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
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
import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetSurgery;
import com.springmvc.domain.PetVaccination;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetDBConnector;
import com.springmvc.repository.PetSurgeryAfter;
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
		System.out.println("몸무게 실행 함수");
		List<PetWeight> listOfPetWeight = petCardService.getWeghitPetCard(petId);
		System.out.println("listOfPetWeight : " + listOfPetWeight + "controller");
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

	// petcard 예방접종 create
	@PostMapping("/petcard")
	public String GetWeghitPetCard(HttpServletRequest request) {

		// 몸무게 객체
		PetWeight petWeight = new PetWeight();

		// 차트 객체
		PetChart petChart = new PetChart();

		// 예방접종 객체
		PetVaccination petVaccination = new PetVaccination();

		// 수술 기록 객체
		PetSurgery petSurgery = new PetSurgery();

		// 입원 기록 객체
		PetSurgeryAfter petSurgeryAfter = new PetSurgeryAfter();

		// 몸무게의 값을 넣어줌

		String petId = request.getParameter("petId");
		String petWeightDateStr = request.getParameter("petWeightDate");
		String petWeightStr = request.getParameter("petWeight");
		String petWeightNum = request.getParameter("PetWeightNum");
		System.out.println(petWeightNum);

		// 차트의 값을 넣어줌
		String petChartstr = request.getParameter("petChart");
		String petChartContent = request.getParameter("petChartContent");
		String petChartDate = request.getParameter("petChartDate");
		String petId_chart = request.getParameter("petId");

		// 예방접종의 값을 넣어줌
		String petVaccinationDate = request.getParameter("petVaccinationDate");
		String petVaccinationstr = request.getParameter("petVaccination");
		String petVaccinationCotent = request.getParameter("petVaccinationCotent");
		String petId_Vaccination = request.getParameter("petId");

		/*
		 * System.out.println(petVaccinationDate);
		 * System.out.println(petVaccinationstr);
		 * System.out.println(petVaccinationCotent);
		 * System.out.println(petId_Vaccination);
		 */

		// 수술 기록의 값을 넣어줌
		String petSurgeryDate = request.getParameter("petSurgeryDate");
		String petSurgeryName = request.getParameter("petSurgeryDate");
		String petSurgeryContent = request.getParameter("petSurgeryName");
		String pet_Surgery = request.getParameter("petId");

		/*
		 * System.out.println(petSurgeryDate); System.out.println(petSurgeryName);
		 * System.out.println(petSurgeryContent); System.out.println(pet_Surgery);
		 */

		// 입원 기록의 값을 넣어줌
		String petSurgeryDateAfter = request.getParameter("petSurgeryDateAfter");
		String petSurgeryContentAfter = request.getParameter("petSurgeryContentAfter");
		String pet_SurgeryAfter = request.getParameter("petId");

		/*
		 * System.out.println(petSurgeryDateAfter);
		 * System.out.println(petSurgeryContentAfter);
		 * System.out.println(pet_SurgeryAfter);
		 */

		// 몸무게의 값을 넣어줌(조건문)
		if (petId != null && petWeightDateStr != null && petWeightStr != null) {
			petWeight.setPetId(petId);
			petWeight.setPetWeightDate(LocalDate.parse(petWeightDateStr));
			petWeight.setPetWeight((petWeightStr));

			petCardService.setWeghitPetCard(petWeight);
		}
		// 차트의 값을 넣어줌(조건문)
		if (petChartstr != null && petChartContent != null && petChartDate != null && petId_chart != null) {
			petChart.setPetChart(petChartstr);
			petChart.setPetChartContent(petChartContent);
			petChart.setPetChartDate(LocalDate.parse(petChartDate));
			petChart.setPetId(petId_chart);

			petCardService.setChartPetCard(petChart);
		}
		// 예방접종의 값을 넣어줌(조건문)
		if (petVaccinationDate != null && petVaccinationstr != null && petVaccinationCotent != null
				&& petId_Vaccination != null) {
			petVaccination.setPetVaccinationDate(LocalDate.parse(petVaccinationDate));
			petVaccination.setPetId(petId_Vaccination);
			petVaccination.setPetVaccination(petVaccinationstr);
			petVaccination.setPetVaccinationCotent(petVaccinationCotent);

			petCardService.setVaccinationPetCard(petVaccination);
		}

		// 수술 기록의 값을 넣어줌(조건문)
		if (petSurgeryDate != null && petSurgeryName != null && petSurgeryContent != null && pet_Surgery != null) {
			petSurgery.setPetSurgeryDate(LocalDate.parse(petSurgeryDate));
			petSurgery.setPetSurgeryName(petSurgeryName);
			petSurgery.setPetSurgeryContent(petSurgeryContent);
			petSurgery.setPetId(pet_Surgery);

			petCardService.setPetSurgery(petSurgery);
		}

		// 입원 기록의 값을 넣어줌(조건문)
		if (petSurgeryDateAfter != null && petSurgeryContentAfter != null && pet_SurgeryAfter != null) {
			petSurgeryAfter.setPetSurgeryAfterDate(LocalDate.parse(petSurgeryDateAfter));
			petSurgeryAfter.setPetSurgeryAfterContent(petSurgeryContentAfter);
			petSurgeryAfter.setPetId(pet_SurgeryAfter);

			petCardService.setPetSurgeryAfter(petSurgeryAfter);
		}

		if (petId == null && petWeightDateStr == null && petWeightStr == null && petChartstr == null
				&& petChartContent == null && petChartDate == null && petId_chart == null && petVaccinationDate == null
				&& petVaccinationstr == null && petVaccinationCotent == null && petId_Vaccination == null
				&& petSurgeryDate == null && petSurgeryName == null && petSurgeryContent == null && pet_Surgery == null
				&& petSurgeryDateAfter == null && petSurgeryContentAfter == null && pet_SurgeryAfter == null) {
			System.out.println("넣어줄 값이 없습니다.");
		}

		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 동물 몸무게를 제거하는 함수
	@GetMapping("/deleteWeghit")
	public String GetDeleteWeghitPetCard(HttpServletRequest request) {

		// 몸무게 기록 제거
		PetWeight petWeight = new PetWeight();
		String petid = request.getParameter("petId");
		String petWeightNum = request.getParameter("petWeightNum");
		System.out.println("petWeightNum : " + petWeightNum);

		int petWeightNumInt = 0;
		try {
			petWeightNumInt = Integer.parseInt(petWeightNum);
		} catch (NumberFormatException e) {
			System.out.println("전달할 값이 null 입니다.");
		}

		petCardService.getDeleteWeghitPetCard(petid, petWeightNumInt);

		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 동물의 진료 기록을 삭제하는 함수
	@GetMapping("/deletetPetChart")
	public String GetPetChart(HttpServletRequest request) {
		PetChart petChart = new PetChart();
		String petid = request.getParameter("petId");
		String petChartNum = request.getParameter("petChartNum");

		int petChartNumInt = 0;
		try {
			petChartNumInt = Integer.parseInt(petChartNum);
		} catch (Exception e) {
			System.out.println("전달할 값이 null입니다.");
		}

		petCardService.getDeletePetCard(petid, petChartNumInt);

		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 동물의 예방접종 기록을 삭제하는 함수
	@GetMapping("/deleteVaccination")
	public String GetdeleteVaccination(HttpServletRequest request) {

		// 백신기록 객체
		PetVaccination petVaccination = new PetVaccination();
		String petid = request.getParameter("petId");
		String petVaccinationNum = request.getParameter("petVaccinationNum");

		int petVaccinationNumInt = 0;
		try {
			petVaccinationNumInt = Integer.parseInt(petVaccinationNum);
		} catch (Exception e) {
			System.out.println("전달할 값이 null입니다.");
		}

		petCardService.getDeleteVaccinationPetCard(petid, petVaccinationNumInt);

		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 동물의 수술기록을 삭제하는 함수
	@GetMapping("/deletetSurgery")
	public String GetDeletePetSurgery(HttpServletRequest request) {

		PetSurgery petSurgery = new PetSurgery();
		String petid = request.getParameter("petId");
		String petSurgeryNum = request.getParameter("petSurgeryNum");

		int petSurgeryNumInt = 0;
		try {
			petSurgeryNumInt = Integer.parseInt(petSurgeryNum);
		} catch (Exception e) {
			System.out.println("전달할 값이 null입니다.");
		}
		petCardService.getDeleteSurgeryPetCard(petid, petSurgeryNumInt);
		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 동물의 입원 기록을 삭제하는 함수
	@GetMapping("/deletetSurgeryAfter")
	public String getDeleteSurgeryAfterPetCard(HttpServletRequest request) {
		PetSurgeryAfter petSurgeryAfter = new PetSurgeryAfter();
		String petid = request.getParameter("petId");
		String petSurgeryAfterNum = request.getParameter("petSurgeryAfterNum");

		int petSurgeryAfterNumInt = 0;
		try {
			petSurgeryAfterNumInt = Integer.parseInt(petSurgeryAfterNum);
		} catch (Exception e) {
			System.out.println("전달할 값이 null입니다.");
		}
		petCardService.getDeleteSurgeryAfterPetCard(petid, petSurgeryAfterNumInt);

		return "redirect:/login/petcard?petid=" + request.getParameter("petId");
	}

	// 몸무게 데이터를 수정하기 전 호출하는 함수
	/*
	 * @GetMapping("/petcardupdate") public String
	 * GetUpdatePatCard(@RequestParam("weghitNum") int weghitNum, Model model) {
	 * 
	 * 
	 * List<PetWeight> listOfPetWeight =
	 * petCardService.getWeghitUpdatePetCard(weghitNum);
	 * model.addAttribute("listOfPetWeight", listOfPetWeight);
	 * 
	 * 
	 * return "/petcard/petcard"; }
	 */

	// 동물의 몸무게 데이터를 수정하는 함수
	@PostMapping("/petcardupdate")
	public String SetUpdatePatCard(@RequestParam("weghitNum") int weghitNum, HttpServletRequest request) {
		
		int weghitNum = Integer.parseInt(request.getParameter("weghitNum"));
		
		return "redirect:/login/petcardupdate";
	}

}
