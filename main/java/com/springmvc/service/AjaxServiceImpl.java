package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.repository.AjaxRepository;

@Service
public class AjaxServiceImpl implements AjaxService {

	@Autowired
	private AjaxRepository ajaxRepository;

	// product 관리자 아이디확인 함수
	@Override
	public boolean productManager(String userId) {
		if(ajaxRepository.productManager(userId)) {
			return true;
		} else {
			return false;
		}
		
	}
	// 소비자 아이디확인 함수
	@Override
	public boolean member(String userId) {
		if(ajaxRepository.member(userId)) {
			return true;
		} else {
		return false;
	}
  }
}