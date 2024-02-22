package com.springmvc.repository;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Product;
import com.springmvc.domain.ShoppingCart;

@Repository
public class ShoppingCartRepositoryImp implements ShoppingCartRepository{
	 
	public ShoppingCartRepositoryImp() {
		super();
		// TODO Auto-generated constructor stub
	}
	private JdbcTemplate template;

	 @Autowired
	     public void setJdbctemplate(DataSource dataSource) {
	         this.template = new JdbcTemplate(dataSource);
	     }
	// 장바구니 생성 함수
	@Override
	public void createCart(Product product, String  personId) {
		
		
	
	}
}
