package com.springmvc.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	// 장바구니에 이미 값이 있을 경우 실행하는 함수
	@Override
	public void D_createshoppingCart(Product product) {
		
		shoppingCartRepository.D_createshoppingCart(product);
	}
	
	// 장바구니에 있는 데이터를 가져옴
	@Override
	public List<ShoppingCart>  readCart(String personId) {
		
		return shoppingCartRepository.readCart(personId);
	}
	// 장바구니를 삭제하는 함수
	@Override
	public void alldeleteCart(String personId) {
		shoppingCartRepository.alldeleteCart(personId);
	}
	//업데이트 하기 전 데이터를 출력하는 함수
	@Override
	public List<ShoppingCart> addShopingCart(String personId) {
		// TODO Auto-generated method stub
		return shoppingCartRepository.addShopingCart(personId);
	}
	
	// 쇼핑카트 update 후 데이터를 db에 넣어주는 함수
	@Override
	public void setupdatecart(ShoppingCart shoppingCart) {
		// TODO Auto-generated method stub
		shoppingCartRepository.setupdatecart(shoppingCart);
	}
	
	// db에서 값을 가져오는 함수
	@Override
	public List<ShoppingCart> getupdatecart(String productId) {
		// TODO Auto-generated method stub
		return shoppingCartRepository.getupdatecart(productId);
	}
	// 개별 product를 삭제하는 함수
	@Override
	public void deleteCart(int shoppingCartId) {
		// TODO Auto-generated method stub
		shoppingCartRepository.deleteCart(shoppingCartId);
	}
	
	
	
}
