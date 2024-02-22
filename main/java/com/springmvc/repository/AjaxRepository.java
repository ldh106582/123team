package com.springmvc.repository;

public interface AjaxRepository {
	
	// product 관리자 아이디확인 함수
	boolean productManager(String userId);
	
	// 소비자 아이디확인 함수
	boolean member(String userId);
}
