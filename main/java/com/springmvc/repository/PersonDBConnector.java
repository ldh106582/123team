package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.Person;

public class PersonDBConnector implements RowMapper<Person>{
	public Person mapRow(ResultSet rs, int rowNum) throws SQLException{
	      Person person = new Person();
	        person.setPersonId(rs.getString(1).trim());         // PersonId
	        person.setPersonPw(rs.getString(2).trim());         // PersonPw
	        person.setPersonEmail(rs.getString(3).trim());      // PersonEmail
	        person.setPersonAddress(rs.getString(4).trim());    // PersonAddress
	        person.setPersonName(rs.getString(5).trim());       // PersonName
	        person.setPersonBirth(rs.getDate(6).toLocalDate()); // PersonBirth, DB의 date 타입 컬럼
	        person.setPersonSex(rs.getString(7).trim());        // PersonSex
	        person.setPersonPhone(rs.getString(8).trim());      // PersonPhone
		return person;
	}
}
