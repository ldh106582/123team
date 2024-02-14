package com.springmvc.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetSurgery;
import com.springmvc.domain.PetVaccination;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetCardRepository;
import com.springmvc.repository.PetSurgeryAfter;

@Service
public class PetCardServiceImp implements PetCardService{

	@Autowired
	private PetCardRepository petCardRepository;
	
	// 몸무
	@Override
	public Pet getCreatPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getCreatPetCard(petId);
	}

	@Override
	public List<PetWeight> getReadPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getReadPetCard(petId);
	}

	
	// 동물의 정보를 가져오는 함수
	@Override
	public Pet getPetList(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getPetList(petId);
	}

	// 동물의 몸무게를 가져오는 함수
	@Override
	public List<PetWeight> getWeghitPetCard(String petId) {
		return petCardRepository.getWeghitPetCard(petId);
	}

	// 동물의 진료 기록을 가져오는 함수	
	@Override
	public List<PetChart> getChartPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getChartPetCard(petId);
	}
	
	// 동물의 예방접종 기록을 가져오는 함수
	@Override
	public List<PetVaccination> getVaccinationPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getVaccinationPetCard(petId);
	}
	
	// 동물의 수술기록을 가져오는 함수
	@Override
	public List<PetSurgery> getPetSurgery(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getPetSurgery(petId);
	}

	// 동물의 입원기록을 가져오는 함수
	@Override
	public List<PetSurgeryAfter> getPetSurgeryAfter(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getPetSurgeryAfter(petId);
	}
	
	// 동물의 몸무게를 넣어주는 함수
	@Override
	public void setWeghitPetCard(PetWeight petWeight) {
		
		petCardRepository.setWeghitPetCard(petWeight);
	}
	
	// 진료 기록을 넣어주는 함수
	@Override
	public void setChartPetCard(PetChart petChart) {
		// TODO Auto-generated method stub
		petCardRepository.setChartPetCard(petChart);
	}
	
	// 예방접종 기록을 넣어주는 함수
	@Override
	public void setVaccinationPetCard(PetVaccination petVaccination) {
		// TODO Auto-generated method stub
		petCardRepository.setVaccinationPetCard(petVaccination);
	}
	
	// 수술 기록을 넣어주는 함수
	@Override
	public void setPetSurgery(PetSurgery petSurgery) {
		// TODO Auto-generated method stub
		petCardRepository.setPetSurgery(petSurgery);
	}

	// 입원 기록을 넣어주는 함수
	@Override
	public void setPetSurgeryAfter(PetSurgeryAfter petSurgeryAfter) {
		// TODO Auto-generated method stub
		petCardRepository.setPetSurgeryAfter(petSurgeryAfter);
	}

	// 동물의 몸무게를 제거하는 함수
	@Override
	public void getDeleteWeghitPetCard(String petid) {
		// TODO Auto-generated method stub
		petCardRepository.getDeleteWeghitPetCard(petid);
	}

	@Override
	public void getDeleteVaccinationPetCard(String petid) {
		// TODO Auto-generated method stub
		petCardRepository.getDeleteVaccinationPetCard(petid);
	} 

	// 동물의 백신기록을 제거하는 함수


	
	
	
	
}
