package com.springmvc.repository;

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;

public interface ManagerRepository {
	void getaddProductManager(ProductMember productMember);
	// 전체 id db에 값을 넣어줌
	void setAllMember(ProductMember productMember);
	// manager 로그인 함수
	Manager managerlogin(Manager manager);
<<<<<<< HEAD
=======
	// 전체 id db 데이터를 삭제하는 함수
	void AllmanagerDelete(String managerId);
	// Member 데이터를 삭제하는 함수
	void P_managerDelete(String managerId);
>>>>>>> 6bb23d73a8eea6e8d359f8841e52b0b8f361839d
}
