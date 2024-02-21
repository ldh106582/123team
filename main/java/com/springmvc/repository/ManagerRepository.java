package com.springmvc.repository;

import com.springmvc.domain.ProductMember;

public interface ManagerRepository {
	void getaddProductManager(ProductMember productMember);
	// 전체 id db에 값을 넣어줌
	void setAllMember(ProductMember productMember);
}
