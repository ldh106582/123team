package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Pet;
import com.springmvc.domain.PetCard;
import com.springmvc.repository.PetCardRepository;

@Service
public class PetCardServiceImp implements PetCardService{

	@Autowired
	private PetCardRepository petCardRepository;
	
	@Override
	public Pet getCreatPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getCreatPetCard(petId);
	}

	@Override
	public List<PetCard> getReadPetCard(String petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getReadPetCard(petId);
	}
	
	// 동물의 몸무게를 가져오는 함수
	@Override
	public List<PetCard> getWeghitPetCard(PetCard petId) {
		// TODO Auto-generated method stub
		return petCardRepository.getWeghitPetCard(petId);
	}

	/*
	 * @Override public void setCreatPetCard(PetCard petCard) { // TODO
	 * Auto-generated method stub petCardRepository.setCreatPetCard(petCard); }
	 */
	
	
	
	
}
