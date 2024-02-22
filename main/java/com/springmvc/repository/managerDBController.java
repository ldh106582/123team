package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Ajax;
import com.springmvc.domain.Manager;

public class managerDBController implements RowMapper<Manager> {
	public Manager mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Manager manager = new Manager();
		manager.setPersonId(rs.getString(1));
<<<<<<< HEAD
		manager.setPersonPw(rs.getString(2));
		manager.setType(rs.getString(3));
=======
		manager.setType(rs.getString(2));
>>>>>>> 6bb23d73a8eea6e8d359f8841e52b0b8f361839d
		return manager;
	}
}
