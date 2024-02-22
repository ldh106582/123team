package com.springmvc.repository;

import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;

public interface ShoppingCartRepository {
	void createCart(Product product, String  personId);
}
