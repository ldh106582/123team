package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetCardRepository;
import com.springmvc.repository.PetSurgery;
import com.springmvc.repository.PetSurgeryAfter;
import com.springmvc.repository.PetVaccination;

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
		// TODO Auto-generated method stub
		petCardRepository.setWeghitPetCard(petWeight);
	}





	
	
	
	
}
