package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;

public interface PersonService {
	void setCreatPerson(Person person);
	Person loginSucess(Person person);
	void SetUpdatePerson(Person person);
	void SetDeletePerson(String personId);
	// pet이름 가져오는 함수
	List<Pet> getPetName(Person person);
	// pet아이디를 가져오는 함수
	List<Pet> getPetId(Pet pet);
	// update에서 사용할 정보
	Person findPersonById(String personId);
	// 전체 id db에 값을 넣어줌
	void setAllMember(Person person);
	// product 관리자 아이디확인 함수
	void getAllMember(Person person);
}
