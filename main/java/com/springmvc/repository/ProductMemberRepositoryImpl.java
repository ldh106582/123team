package com.springmvc.repository;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.ProductMember;

@Repository
public class ProductMemberRepositoryImpl implements ProductMemberRepository {

	
	 public ProductMemberRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	private JdbcTemplate template;

	 @Autowired
	     public void setJdbctemplate(DataSource dataSource) {
	         this.template = new JdbcTemplate(dataSource);
	     }
	
	@Override
	public void getaddProductManager(ProductMember productMember) {
		String SQL = "insert into ProductMember(PersonId, PersonPw, PersonEmail, PersonName, PersonPhone, CompanyName, CompanyAddress, CompanyPhone,  Companyregistration, Companybusinessreport, division ) values(?,?,?,?,?,?,?,?,?,?)";
		template.update(SQL, new Object[] {productMember}, new ProductDBConnector());
	}
	
}
