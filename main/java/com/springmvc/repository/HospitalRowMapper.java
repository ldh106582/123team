package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.ENBoard;
import com.springmvc.domain.Hospital;

public class HospitalRowMapper implements RowMapper<Hospital>{
	
	@Override
	public Hospital mapRow(ResultSet rs, int rowNum) throws SQLException {
		Hospital hopital = new Hospital();		
		return hopital;
	}
	
}