package com.springmvc.repository;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AjaxRepositoryImpl implements AjaxRepository{

	public AjaxRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	private JdbcTemplate template;
	
	@Autowired
	public void setJdbcTemplate(DataSource dataSource) 
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	// product 관리자 아이디확인 함수
	@Override
	public boolean productManager(String userId) {
		String SQL = "select count(*) from all_member where PersonId = ?";
		int id = template.queryForObject(SQL, Integer.class, userId);
		System.out.println("id :" + id);
		
		if ("1".equals(id) || 1 == id) {
			return false;
		} else {
			return true;
		}
		
	}

	// 소비자 아이디확인 함수
	@Override
	public boolean member(String userId) {
		String SQL = "select count(*) from all_member where PersonId = ?";
		int id = template.queryForObject(SQL, Integer.class, userId);
		System.out.println("id :" + id);
		
		if ("1".equals(id) || 1 == id) {
			System.out.println("false도착");
			return false;
		} else {
			return true;
		}
	}
}