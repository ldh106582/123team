package com.springmvc.service;

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;

public interface ManagerService {
	void getaddProductManager(ProductMember productMember);
	// 전체 id db에 값을 넣어줌
	void setAllMember(ProductMember productMember);
	// manager 로그인 함수
	Manager managerlogin(Manager manager);
}
