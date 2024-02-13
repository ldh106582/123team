package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.PetChart;

public class PetSurgeryAfterDBConnector implements RowMapper<PetSurgeryAfter>{
	
	public PetSurgeryAfter mapRow(ResultSet rs, int rowNum) throws SQLException {
		PetSurgeryAfter petSurgery = new PetSurgeryAfter();
		
		petSurgery.setPetSurgeryAfterDate(rs.getDate(1).toLocalDate());
		petSurgery.setPetSurgeryAfterContent(rs.getString(2));
		return petSurgery;
	}
}
