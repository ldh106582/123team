package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetSurgery;
import com.springmvc.domain.PetVaccination;
import com.springmvc.domain.PetWeight;
import com.springmvc.repository.PetSurgeryAfter;

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
	
	// 진료 기록을 넣어주는 함수
	void setChartPetCard(PetChart petChart);
	
	// 예방접종 기록을 넣어주는 함수
	void setVaccinationPetCard(PetVaccination petVaccination);
	
	// 수술 기록을 넣어주는 함수
	void setPetSurgery(PetSurgery petSurgery);
	
	// 입원 기록을 넣어주는 함수
	void setPetSurgeryAfter(PetSurgeryAfter petSurgeryAfter);
	
	// 동물의 몸무게를 제거하는 함수
	void getDeleteWeghitPetCard(String petid);
	
	// 동물의 백신기록을 제거하는 함수
	void getDeleteVaccinationPetCard(String petid);
}
