package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.repository.PersonRepository;

@Service
public class PersonServciceImp implements PersonService{

	@Autowired
	PersonRepository psersonRepository;

	@Override
	public void setCreatPerson(Person person) 
	{
		System.out.println("createservice");
		psersonRepository.setCreatPerson(person);
		
	}

	@Override
	public Person loginSucess(Person person) {
		
		return psersonRepository.loginSucess(person);
	}

	@Override
	public void SetUpdatePerson(Person person) {
		// TODO Auto-generated method stub
		psersonRepository.SetUpdatePerson(person);
	}

	@Override
	public void SetDeletePerson(String personId) {
		// TODO Auto-generated method stub
		psersonRepository.SetDeletePerson(personId);
	}

	@Override
	public List<Pet> getPetName(Person person) {
		// TODO Auto-generated method stub
		return psersonRepository.getPetName(person);
	}

	@Override
	public List<Pet> getPetId(Pet pet) {
		// TODO Auto-generated method stub
		return psersonRepository.getPetId(pet);
	}
	// update에서 사용할 정보
	@Override
	public Person findPersonById(String personId) {
		// TODO Auto-generated method stub
		return psersonRepository.findPersonById(personId);
	}

	// 전체 id db에 값을 넣어줌
	@Override
	public void setAllMember(Person person) {
		// TODO Auto-generated method stub
		psersonRepository.setAllMember(person);
	}
	// 전체 id db에 값을 삭제해줌
	@Override
	public void getAllMember(Person person) {
		// TODO Auto-generated method stub
		psersonRepository.getAllMember(person);
	} 


}
