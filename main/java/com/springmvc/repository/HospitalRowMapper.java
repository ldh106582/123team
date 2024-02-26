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
		
		hopital.setContext(rs.getString(1));
		hopital.setTitle(rs.getString(2));
		hopital.setHit(rs.getInt(3));
		hopital.setRegistDay(rs.getString(4));
		hopital.setExperience(rs.getString(5));
		hopital.setAnimal(rs.getString(6));
		hopital.setBoardId(rs.getString(7));
		hopital.setPersonId(rs.getString(8));
		
		return hopital;
	}
	
}