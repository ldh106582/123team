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
<<<<<<< HEAD
=======
	
	// manager 로그인 함수
	@Override
	public Manager managerlogin(Manager manager) {
		// TODO Auto-generated method stub
		return productMemberRepository.managerlogin(manager);
	}
	// 전체 id db 데이터를 삭제하는 함수	
	@Override
	public void AllmanagerDelete(String managerId) {
		// TODO Auto-generated method stub
		productMemberRepository.AllmanagerDelete(managerId);
	}
	// Member 데이터를 삭제하는 함수
	@Override
	public void P_managerDelete(String managerId) {
		// TODO Auto-generated method stub
		productMemberRepository.P_managerDelete(managerId);
	}
	
	
>>>>>>> 6bb23d73a8eea6e8d359f8841e52b0b8f361839d
	
	// manager 로그인 함수
	@Override
	public Manager managerlogin(Manager manager) {
		// TODO Auto-generated method stub
		return productMemberRepository.managerlogin(manager);
	}
}
