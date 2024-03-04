package com.springmvc.repository;

import java.util.List;

import com.springmvc.controller.ManagerController;
import com.springmvc.domain.type;
import com.springmvc.domain.EApplication;
import com.springmvc.domain.Ex_manager;
import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalMember;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.domain.Product;
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
	// 프로덕트 매니저가 로그인할 때 가져올 데이터
	ProductMember getPM(String personId);
	// 해당 프로덕트 매니저의 상품을 가죠오는 데이터
	List<Product> getProduct(String personId);
	// 동물병원 의사가 로그인할 때 가져올 데이터
	HospitalMember getHM(String personId);
	// 해당 동물병원의사의 병원정보를 가죠오는 데이터
	List<Hospital> getHopital(String personId);
	// product manager 마이페이지를 수정하는 곳
	void SetUpdatePM(ProductMember productMember);
	 // hospital manager 마이페이지를 수정하는 곳
	void SetUpdateHM(HospitalMember hospitalMember);
	// product manager person 테이블을 수정하는 곳
	void SetUpdatePr(ProductMember productMember);
	 // hospital manager person 테이블을 수정하는 곳
	void SetUpdatePH(HospitalMember hospitalMembers);
    // 체험단 관리자가 로그인할 때 가져올 데이터
	Person getEM(String personId);
	// 체험단 신청목록을 로그인할 때 가져올 데이터
	List<EApplication> getEA(String personId);
}
