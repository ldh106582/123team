package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Manager;
import com.springmvc.domain.Person;
import com.springmvc.domain.ProductMember;
import com.springmvc.domain.ShoppingCart;

public interface OrderRepository {

	// 주문완료 페이지
	List<ShoppingCart> oderRead(String personId);
	// 개별 고객의 정보를 가져오는 함수
	List<Person> P_OderRead(String personId);
	// 관리자의 정보를 가져오는 함수
	List<ProductMember> M_OderRead(String personId);
}
