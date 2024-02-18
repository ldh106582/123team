package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;

public interface PsersonRepository {

	void setCreatPerson(Person person);
	Person loginSucess(Person person);
	void SetUpdatePerson(Person person);
	void SetDeletePerson(String personId);
	List<Pet> getPetName(Person person);
	List<Pet> getPetId(Pet pet);
	// petcard에 사용할 정보

}
