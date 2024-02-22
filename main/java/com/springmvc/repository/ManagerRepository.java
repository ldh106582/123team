package com.springmvc.repository;

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;

public interface ManagerRepository {
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
	}
