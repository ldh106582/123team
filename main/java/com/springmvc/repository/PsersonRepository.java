package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;

public interface PsersonRepository {

	void setCreatPerson(Person person);
	Person loginSucess(Person person);
	Person GetUpdatePerson(String personId);
	void SetUpdatePerson(Person person);
	void SetDeletePerson(String personId);
	List<Pet> getPetName(Person person);
	List<Pet> getPetId(Pet pet);
}
