package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Manager;
import com.springmvc.domain.Person;
import com.springmvc.domain.ShoppingCart;
import com.springmvc.repository.*;

@Service
public class OrderServiceImp implements OrderSerivce{

	@Autowired
	private OrderRepository OrderRepository;
	// 주문완료 페이지
	@Override
	public List<ShoppingCart> oderRead(String personId) {
		return OrderRepository.oderRead(personId);
	}
	
	// 개별 고객의 정보를 가져오는 함수
	@Override
	public List<Person> P_OderRead(String personId) {
		// TODO Auto-generated method stub
		return OrderRepository.P_OderRead(personId);
	}
	// 관리자의 정보를 가져오는 함수
	@Override
	public List<Manager> M_OderRead(String personId) {
		// TODO Auto-generated method stub
		return OrderRepository.M_OderRead(personId);
	}
	
	
	
}
