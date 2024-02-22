package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;
import com.springmvc.repository.ManagerRepository;

@Service
public class ManagerServiceImp implements ManagerService{
	@Autowired
	ManagerRepository productMemberRepository;
	
	@Override
	public void getaddProductManager(ProductMember productMember) {
		// TODO Auto-generated method stub
		productMemberRepository.getaddProductManager(productMember);
	}
	
	// 전체 id db에 값을 넣어줌
	
	@Override
	public void setAllMember(ProductMember productMember) {
		// TODO Auto-generated method stub
		productMemberRepository.setAllMember(productMember);
	}
	
	// manager 로그인 함수
	@Override
	public Manager managerlogin(Manager manager) {
		// TODO Auto-generated method stub
		return productMemberRepository.managerlogin(manager);
	}
}
