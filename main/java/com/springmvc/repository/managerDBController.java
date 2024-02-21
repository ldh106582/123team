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
		manager.setType(rs.getString(2));
		return manager;
	}
}
