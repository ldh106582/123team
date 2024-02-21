package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Product;

public interface ProductRepository {

	List<Product> getProductsList();

	Product getProductById(String productId);

	void addProduct(Product product);

	void updateProduct(Product product, String productId);

	void deleteProduct(String producId);

}
