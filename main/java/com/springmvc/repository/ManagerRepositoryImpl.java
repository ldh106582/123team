package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.Manager;
import com.springmvc.domain.ProductMember;

@Repository
public class ManagerRepositoryImpl implements ManagerRepository {

	
	 public ManagerRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	private JdbcTemplate template;

	 @Autowired
	     public void setJdbctemplate(DataSource dataSource) 
	 	 {
	         this.template = new JdbcTemplate(dataSource);
	     }
	
	@Override
	public void getaddProductManager(ProductMember productMember) 
	{
		String SQL = "insert into ProductMember(PersonId, PersonPw, PersonEmail, PersonName, PersonPhone, CompanyName, CompanyAddress, CompanyPhone, Companyregistration, Type) values(?,?,?,?,?,?,?,?,?,?)";
		template.update(SQL, new Object[] {productMember.getPersonId(), productMember.getPersonPw(), productMember.getPersonEmail(),
						productMember.getPersonName(), productMember.getPersonPhone(), productMember.getCompanyName(), productMember.getCompanyAddress(),
						productMember.getCompanyPhone(), productMember.getCompanyregistration(), productMember.getType()});
	}
	
	// 전체 id db에 값을 넣어줌
	@Override
	public void setAllMember(ProductMember productMember) 
	{
		String SQL = "insert into all_member(PersonId)" + "values(?)";
		template.update(SQL, productMember.getPersonId());
	}

	@Override
	public Manager managerlogin(Manager manager) 
	{
	    String SQL = "select count(*) from all_member where PersonId=?";
	    Integer intNum = template.queryForObject(SQL, Integer.class, manager.getPersonId());
	    System.out.println("intNum : " + intNum);
	    Manager managerId = null;
	    if(intNum != null && intNum != 0)
	    {
	        String ManagerSQL ="select * from all_member where PersonId=?";
	        // RowMapper 객체를 정의해야 합니다. RowMapper는 인터페이스이므로 익명 클래스를 사용할 수 있습니다.
	        managerId = template.queryForObject(ManagerSQL, new Object[] {manager.getPersonId()}, new managerDBController());

	        System.out.println(managerId.getPersonId());
	        System.out.println(managerId.getType());
	        
	    }
	    return managerId;
	}

	// 전체 id db 데이터를 삭제하는 함수
	@Override
	public void AllmanagerDelete(String managerId) {
		String SQL = "delete from ProductMember where PersonId = ?";
		template.update(SQL, managerId);
	}
	// Member 데이터를 삭제하는 함수
	@Override
	public void P_managerDelete(String managerId) {
		String SQL = "delete from all_member where PersonId = ?";
		template.update(SQL, managerId);
	}
	// mypage로 이동하기 위한 값을 가져옴

	@Override
	public ProductMember managerPage(String personId) {
		String SQL = "select count(*) from ProductMember where PersonId = ?";
		Integer intNum = template.queryForObject(SQL, Integer.class, personId);
		System.out.println("intNum managerPage : " + intNum);
		ProductMember productMember = new ProductMember();
		if(intNum != null || intNum != 0) {
			String managerSQL = "select * from ProductMember where PersonId = ?";
			productMember = template.queryForObject(managerSQL, new Object[] {personId}, new ProductMemberDBConnector());
		}
		return productMember;
	}
	
	// prodcut 관리자 회원 정보를 수정하기 전 보여주는 함수
	@Override
	public ProductMember managerUpdate(String personId) {
		String SQL = "select count(*) from ProductMember where PersonId = ?";
		Integer intNum = template.queryForObject(SQL, Integer.class, personId);
		ProductMember productMember = new ProductMember();
		if(intNum != null || intNum != 0) {
			String managerSQL = "select * from ProductMember where PersonId = ?";
			productMember = template.queryForObject(managerSQL, new Object[] {personId}, new ProductMemberDBConnector());
		}
		return productMember;
	}
	
	// prodcut 관리자 회원 정보를 수정하는 함수
	@Override
	public void getmanagerUpdate(ProductMember productMemId) {
		if(productMemId.getPersonId()!=null) {
			 String SQL = "update ProductMember set PersonPw=?, PersonEmail=?, PersonName=?, PersonPhone=?,"
			 			   + "CompanyName=?, CompanyAddress=?, CompanyPhone=? where PersonId=?";
			 template.update(SQL, productMemId.getPersonId(), productMemId.getPersonPw(), productMemId.getPersonEmail(), productMemId.getPersonName(),
					 productMemId.getPersonPhone(), productMemId.getCompanyName(), productMemId.getCompanyAddress(), productMemId.getCompanyPhone());
		}
	}
	// 수정 후 보여주기 위해 데이터를 가져옴
	@Override
	public ProductMember setmanagerUpdate(ProductMember productMemId) {
		String SQL = "select count(*) from ProductMember where PersonId=?";
		  Integer intNum = template.queryForObject(SQL, Integer.class, productMemId.getPersonId());
		  ProductMember ProductMemberId = null;
		  if(intNum != null && intNum != 0)
		    {
			  String ManagerSQL ="select * from ProductMember where PersonId=?";
			  ProductMemberId = template.queryForObject(ManagerSQL, new Object[] {productMemId.getPersonId()}, new ProductMemberDBConnector());
		    }
		return ProductMemberId;
	}
	

	
	
	
	
}