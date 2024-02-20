package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Product;

public class ProductRowMapper implements RowMapper<Product> {

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product p = new Product();
		p.setProductId(rs.getString(1));
		p.setProductName(rs.getString(2));
		p.setProductPrice(rs.getInt(3));
		p.setProductCategoty(rs.getString(4));
		p.setProductDescribe(rs.getString(5));
		p.setReleaseDate(rs.getDate(6));
		p.setProductUnitstock(rs.getInt(7));
		p.setProductImage(rs.getString(8));
		p.setPersonId(rs.getString(9));
		
		return null;
	}

}
