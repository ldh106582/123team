package com.springmvc.repository;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;

public class PetDBConnector implements RowMapper<Pet>{
	public Pet mapRow(ResultSet rs, int rowNum) throws SQLException{
	    Pet pet = new Pet();
        pet.setPetId(rs.getString(1).trim());
        pet.setPetName(rs.getString(2).trim());
        pet.setPetType(rs.getString(3).trim());
        pet.setPetVarity(rs.getString(4).trim());
        pet.setPetSex(rs.getString(5).trim());
        Date date = rs.getDate(6);
        if (date != null) {
            pet.setPetBirth(date.toLocalDate());
        }
        pet.setPersonId(rs.getString(7).trim());
        return pet;
	}
}
