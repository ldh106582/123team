package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetWeight;

public interface PetCardRepository {
	Pet getCreatPetCard(String petId);
	List<PetWeight> getReadPetCard(String petId);
	// 동물의 몸무게를 가져오는 함수
	List<PetWeight> getWeghitPetCard(String petId);
	// 동물의 진료를 가져오는 함수
	List<PetChart> getChartPetCard(String petId);
	// 예방접종 데이터를 가져옴
	List<PetVaccination> getVaccinationPetCard(String petId);
	// 동물의 수술데이터를 가져옴
	List<PetSurgery> getPetSurgery(String petId);
	// 도물의 입원데이터를 가져옴
	List<PetSurgeryAfter> getPetSurgeryAfter(String petId);
	
	// 동물의 정보를 가져오는 함수
	Pet getPetList(String petId);

	
	
	// 동물의 몸무게를 넣어주는 함수
	void setWeghitPetCard(PetWeight petWeight);	
	


}
