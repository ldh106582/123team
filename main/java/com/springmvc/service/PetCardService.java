package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetCard;

public interface PetCardService {
	Pet getCreatPetCard(String petId);
	List<PetCard> getReadPetCard(String petId);
	// 동물의 몸무게를 가져오는 함수
	List<PetCard> getWeghitPetCard(String petId);
	// void setCreatPetCard(PetCard petCard);
}
