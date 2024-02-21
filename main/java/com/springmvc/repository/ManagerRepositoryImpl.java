package com.springmvc.repository;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.ProductMember;

@Repository
public class ManagerRepositoryImpl implements ManagerRepository {

	
	 public ManagerRepositoryImpl() {
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
		String SQL = "insert into ProductMember(PersonId, PersonPw, PersonEmail, PersonName, PersonPhone, CompanyName, CompanyAddress, CompanyPhone, Companyregistration, Type) values(?,?,?,?,?,?,?,?,?,?)";
		template.update(SQL, new Object[] {productMember.getPersonId(), productMember.getPersonPw(), productMember.getPersonEmail(),
						productMember.getPersonName(), productMember.getPersonPhone(), productMember.getCompanyName(), productMember.getCompanyAddress(),
						productMember.getCompanyPhone(), productMember.getCompanyregistration(), productMember.getType()});
	}
	
	// 전체 id db에 값을 넣어줌
	@Override
	public void setAllMember(ProductMember productMember) {
		String SQL = "insert into all_member(PersonId)" + "values(?)";
		template.update(SQL, productMember.getPersonId());
	}
	
	
}
	
