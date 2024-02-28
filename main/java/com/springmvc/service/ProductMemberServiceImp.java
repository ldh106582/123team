package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.ProductMember;
import com.springmvc.repository.ProductMemberRepository;

@Service
public class ProductMemberServiceImp implements ProductMemberService{
	@Autowired
	ProductMemberRepository productMemberRepository;
	
	@Override
	public void getaddProductManager(ProductMember productMember) {
		// TODO Auto-generated method stub
		productMemberRepository.getaddProductManager(productMember);
	}

}
