package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Person;
import com.springmvc.domain.Product;
import com.springmvc.domain.ProductMember;

public class ProductDBConnector implements RowMapper<Product> {
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException{
		Product product = new Product();
		product.setPersonId(rs.getString(1));
		product.setProductId(rs.getString(2));
		product.setProductName(rs.getString(3));
		product.setProductCategory(rs.getString(5));
		product.setProductPrice(rs.getInt(6));
		product.setReleaseDate(rs.getDate(7));
		product.setProductDescribe(rs.getString(8));
		product.setProductImage(rs.getString(9));
		product.setProductUnitStock(rs.getInt(10));
		
		return product;
	}

}