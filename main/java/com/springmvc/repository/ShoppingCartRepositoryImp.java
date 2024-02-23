package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.controller.ShoppingCartController;
import com.springmvc.domain.Person;
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
	// 장바구니를 생성하기 전 product db 데이터를 가져오는 함수
	@Override
	public Product createCart(String productId) {
		String SQL = "select count(*) from Product where productId = ?";
		Integer intNum = template.queryForObject(SQL, Integer.class, productId);
		Product product = null;
		if(intNum != 0) {
			SQL = "select * from Product where productId = ?";
			product = template.queryForObject(SQL, new Object[] {productId}, new ProductRowMapper());
			return product;
		} else {
			System.out.println("해당 상품이 존재하지 않습니다.");
			return null;
		}
		
		
	}
	// prduct에서 가져온 값을 장바구니db에 넣어줌
	@Override
	public void createshoppingCart(Product product, int amount) {
		String SQL = "insert into ShoppingCart (ProductId, ProductName, ProductPrice, ProductCategory, amount, personId)"
					+ "values(?,?,?,?,?,?)";
		template.update(SQL, product.getProductId(), product.getProductName(), product.getProductPrice(), product.getProductCategory(),
							amount, product.getPersonId());
	}
	// 장바구니에 있는 데이터를 가져옴
	@Override
	public List<ShoppingCart> readCart(String personId) {
		
		List<ShoppingCart> listShoppingCart = new ArrayList<ShoppingCart>();
		
		String SQL = "select count(*) from ShoppingCart where personId=?";
		Integer intNum =  template.queryForObject(SQL, Integer.class, personId);
		ShoppingCart shoppingCart = null;
		if(intNum != null) {
			SQL = "select * from ShoppingCart where personId=?";
			listShoppingCart = template.query(SQL, new Object[] {personId}, new ShoppingCartDBConnector());
			return listShoppingCart;
		}
		System.out.println("해당 아이디의 장바구니가 없습니다.");
		return null;
	}
	
	// 장바구니를 삭제하는 함수

	@Override
	public void alldeleteCart(int shoppingcart) {
		String SQL = "delete from ShoppingCart where shoppingcartId =?";
		template.update(SQL, shoppingcart);
	}
	
	//업데이트 하기 전 데이터를 출력하는 함수
	@Override
	public List<ShoppingCart> addShopingCart(String personId) {
		
		List<ShoppingCart> listOfCart = new ArrayList<ShoppingCart>();
		
		String SQL = "select count(*) from ShoppingCart where personId=?";
		Integer intNum = template.queryForObject(SQL, Integer.class, personId);
		if(intNum != null) {
			SQL = "select * from ShoppingCart where personId=?";
			listOfCart = template.query(SQL, new Object[] {personId}, new ShoppingCartDBConnector());
			return listOfCart; 
		}
		System.out.println("해당하는 정보가 존재하지 않습니다.");
		return null;
	}

	

	
	
}
