package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class PetVaccinationDBConnector implements RowMapper<PetVaccination>{
	public PetVaccination mapRow(ResultSet rs, int rowNum) throws SQLException {
		PetVaccination petVaccination = new PetVaccination();

		petVaccination.setPetVaccinationDate(rs.getDate(1).toLocalDate());
		petVaccination.setPetVaccination(rs.getString(2));
		petVaccination.setPetVaccinationCotent(rs.getString(3));
		return petVaccination;
	}

}
