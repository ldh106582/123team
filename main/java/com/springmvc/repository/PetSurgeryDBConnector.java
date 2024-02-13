package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.PetChart;

public class PetSurgeryDBConnector implements RowMapper<PetSurgery> {
	public PetSurgery mapRow(ResultSet rs, int rowNum) throws SQLException {
		PetSurgery petSurgery = new PetSurgery();

		petSurgery.setPetSurgeryDate(rs.getDate(1).toLocalDate());
		petSurgery.setPetSurgeryName(rs.getString(2));
		petSurgery.setPetSurgeryContent(rs.getString(3));
		return petSurgery;
	}

}
