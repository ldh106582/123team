package com.springmvc.service;

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
	
	// 장바구니 생성 함수
	@Override
	public void createCart(Product product, String  personId) {
		// TODO Auto-generated method stub
		shoppingCartRepository.createCart(product, personId);
	}
}
