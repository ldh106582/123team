package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Person;
import com.springmvc.domain.Product;
import com.springmvc.domain.ProductMember;

public class ProductDBConnector implements RowMapper<ProductMember> {
	public ProductMember mapRow(ResultSet rs, int rowNum) throws SQLException{
		ProductMember productMember = new ProductMember();
		productMember.setPersonId(rs.getString(1));
		productMember.setPersonPw(rs.getString(2));
		productMember.setPersonEmail(rs.getString(3));
		productMember.setPersonName(rs.getString(4));
		productMember.setPersonPhone(rs.getString(5));
		productMember.setCompanyName(rs.getString(6));
		productMember.setCompanyAddress(rs.getString(7));
		productMember.setCompanyPhone(rs.getString(8));
		productMember.setCompanyregistration(rs.getString(9));
		productMember.setCompanybusinessreport(rs.getString(10));
		productMember.setType(rs.getString(11));
		return productMember;
	}

}
