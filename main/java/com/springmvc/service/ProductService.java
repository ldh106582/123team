package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Product;

public interface ProductService {

	List<Product> getProductsList();

	Product getProductById(String productId);

}
