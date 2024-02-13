package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetSurgery;
import com.springmvc.repository.PetSurgeryAfter;
import com.springmvc.repository.PetVaccination;

public interface PetCardService {
	Pet getCreatPetCard(String petId);
	List<PetWeight> getReadPetCard(String petId);
	
	// 동물의 정보를 가져오는 함수
	Pet getPetList(String petId);
	
	// 동물의 몸무게를 가져오는 함수
	List<PetWeight> getWeghitPetCard(String petId);
	
	// 동물의 진료 기록을 가져오는 함수
	List<PetChart> getChartPetCard(String petId);
	
	// 동물의 예방접종 기록을 가져오는 함수
	List<PetVaccination> getVaccinationPetCard(String petId);
	
	// 동물이 수술 기록을 가져오는 함수
	List<PetSurgery> getPetSurgery(String petId);
	
	// 동물의 입원 기록을 가져오는 함수
	List<PetSurgeryAfter> getPetSurgeryAfter(String petId);
	
	// 동물의 몸무게를 넣어주는 함수
	void setWeghitPetCard(PetWeight petWeight);
}
