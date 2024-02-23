package com.springmvc.service;

import java.util.List;

import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;

public interface ShoppingCartService {
	// 장바구니를 생성하기 전 product db 데이터를 가져오는 함수
	Product createCart( String productId);
	// prduct에서 가져온 값을 장바구니db에 넣어줌
	void createshoppingCart(Product product);	
	// 장바구니에 있는 데이터를 가져옴
	List<ShoppingCart> readCart(String personId);
	// 장바구니를 삭제하는 함수
	void alldeleteCart(int shoppingcart);
	//업데이트 하기 전 데이터를 출력하는 함수
	List<ShoppingCart> addShopingCart(String personId);
}
