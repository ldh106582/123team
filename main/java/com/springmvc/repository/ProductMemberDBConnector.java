package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.ProductMember;

public class ProductMemberDBConnector implements RowMapper<ProductMember>{
	@Override
	public ProductMember mapRow(ResultSet rs, int rowNum) throws SQLException {
	    ProductMember productMember = new ProductMember();
	    productMember.setPersonId(rs.getString("PersonId"));
	    productMember.setPersonPw(rs.getString("PersonPw"));
	    productMember.setPersonEmail(rs.getString("PersonEmail"));
	    productMember.setPersonName(rs.getString("PersonName"));
	    productMember.setPersonPhone(rs.getString("PersonPhone"));
	    productMember.setCompanyName(rs.getString("CompanyName"));
	    productMember.setCompanyAddress(rs.getString("CompanyAddress"));
	    productMember.setCompanyPhone(rs.getString("CompanyPhone"));
	    productMember.setCompanyregistration(rs.getString("Companyregistration"));
	    productMember.setType(rs.getString("Type"));
	    return productMember;
	}

}