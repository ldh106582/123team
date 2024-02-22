package com.springmvc.service;

import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;

public interface ShoppingCartService {
	// 장바구니 생성 함수
	void createCart(Product product, String  personId);
}
