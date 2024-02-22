package com.springmvc.repository;

import java.util.List;

import com.springmvc.controller.ManagerController;
import com.springmvc.domain.Manager;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.domain.ProductMember;

public interface PersonRepository {

	void setCreatPerson(Person person);
	Person loginSucess(Person person);
	void SetUpdatePerson(Person person);
	void SetDeletePerson(String personId);
	List<Pet> getPetName(Person person);
	List<Pet> getPetId(Pet pet);
	// update에서 사용할 정보
	Person findPersonById(String id);
	// 전체 id db에 값을 넣어줌
	void setAllMember(Person person);
	// 전체 id db에 값을 삭제해줌
	void getAllMember(Person person);

}
