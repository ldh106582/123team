package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.HospitalMember;

public class HospitalManagerDBConnector implements RowMapper<HospitalMember> {
	@Override
	public HospitalMember mapRow(ResultSet rs, int rowNum) throws SQLException{
		HospitalMember hospitalManager = new HospitalMember();
		hospitalManager.setPersonId(rs.getString("personId"));
		hospitalManager.setPersonPw(rs.getString("personPw"));
		hospitalManager.setPersonEmail(rs.getString("personEmail"));
		hospitalManager.setPersonName(rs.getString("personName"));
		hospitalManager.setPersonPhone(rs.getString("personPhone"));
		hospitalManager.setHospitalName(rs.getString("hospitalName"));
		hospitalManager.setHospitalAddress(rs.getString("hospitalAddress"));
		hospitalManager.setHospitalPhone(rs.getString("hospitalPhone"));
		hospitalManager.setHospitalregistration(rs.getString("hospitalregistration"));
		hospitalManager.setHospitalliLicense(rs.getString("hopitalliLicense"));
		hospitalManager.setType(rs.getString("type"));
		return hospitalManager;
	}

}
