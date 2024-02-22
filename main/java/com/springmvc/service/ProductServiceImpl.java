package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Product;
import com.springmvc.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductRepository productRepository;
	
	@Override
	public List<Product> getProductsList() {
		return productRepository.getProductsList();
	}

	@Override
	public Product getProductById(String productId) {
		return productRepository.getProductById(productId);
	}

	@Override
	public void addProduct(Product product) {
		productRepository.addProduct(product);
		
	}

	@Override
	public void updateProduct(Product product, String productId) {
		productRepository.updateProduct(product,productId);
	}

	@Override
	public void deleteProduct(String producId) {
		productRepository.deleteProduct(producId);
	}

}
