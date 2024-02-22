package com.springmvc.service;

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;

public interface ManagerService {
	void getaddProductManager(ProductMember productMember);
	// 전체 id db에 값을 넣어줌
	void setAllMember(ProductMember productMember);
	// manager 로그인 함수
	Manager managerlogin(Manager manager);

	// 전체 id db 데이터를 삭제하는 함수
	void AllmanagerDelete(String managerId);
	// Member 데이터를 삭제하는 함수
	void P_managerDelete(String managerId);
	// mypage로 이동하기 위한 값을 가져옴
	ProductMember managerPage(String personId);
	
	// prodcut 관리자 회원 정보를 수정하기 전 보여주는 함수
	ProductMember managerUpdate(String personId);
	
	// prodcut 관리자 회원 정보를 수정하는 함수
	void getmanagerUpdate(ProductMember productMemId);
	// 정보를 넣고 보여주는 함수
	ProductMember setmanagerUpdate(ProductMember productMemId);
	
}
