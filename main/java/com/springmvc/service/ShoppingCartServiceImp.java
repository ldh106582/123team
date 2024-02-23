package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;
import com.springmvc.repository.ShoppingCartRepository;

@Service
public class ShoppingCartServiceImp implements ShoppingCartService{
	
	@Autowired
	private ShoppingCartRepository shoppingCartRepository;
	
	// 장바구니를 생성하기 전 product db 데이터를 가져오는 함수
	@Override
	public Product createCart(String productId) {
		return shoppingCartRepository.createCart(productId);	
	}
	// prduct에서 가져온 값을 장바구니db에 넣어줌
	@Override
	public void createshoppingCart(Product product) {
		int amount = 1;
		shoppingCartRepository.createshoppingCart(product, amount);
	}
	
	// 장바구니에 있는 데이터를 가져옴
	@Override
	public List<ShoppingCart>  readCart(String personId) {
		
		return shoppingCartRepository.readCart(personId);
	}
	// 장바구니를 삭제하는 함수
	@Override
	public void alldeleteCart(int shoppingcart) {
		shoppingCartRepository.alldeleteCart(shoppingcart);
	}
	//업데이트 하기 전 데이터를 출력하는 함수
	@Override
	public List<ShoppingCart> addShopingCart(String personId) {
		// TODO Auto-generated method stub
		return shoppingCartRepository.addShopingCart(personId);
	}
	
	
	
	
	
}
