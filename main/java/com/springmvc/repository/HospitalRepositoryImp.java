package com.springmvc.repository;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Hospital;

@Repository
public class HospitalRepositoryImp implements HospitalRepository{
	private JdbcTemplate template;

	 @Autowired
	 public void setJdbctemplate(DataSource dataSource) {
	     this.template = new JdbcTemplate(dataSource);
	 }
	 
	@Override
	public List<Hospital> getAllhospitals() {
		String SQL = "Select * from hospital";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		return list;
	}

	@Override
	public Hospital gethosptialByhId(String hid) {
		Hospital hospital=null;
		String SQL = "Select * from hospital";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		for(int i =0;i<list.size();i++) {
			hospital = list.get(i);
			if(hospital.getHid().equals(hid)) {
				break;
			}
		}
		return hospital;
	}

	@Override
	public void addhospital(Hospital hospital) {
		String SQL = "insert into hospital values(?,?,?,?,?,?,?,?,?)";
		template.update(SQL,hospital.getName(),hospital.getAddr(),hospital.getNumber(),hospital.getRuntime(),getHid(),hospital.getParking(),hospital.getDescription(),hospital.getPersonId(),hospital.getImage());
	}

	private String getHid() {
		String str = Long.toString(System.currentTimeMillis());
		return str;
	}

	@Override
	public void updateHospital(Hospital hospital, String hid) {
		String SQL = "update hospital set name=?,number=?,runtime=?,parking=?,description=?,image=? where hid=?";
		template.update(SQL,hospital.getName(),hospital.getNumber(),hospital.getRuntime(),hospital.getParking(),hospital.getDescription(),hospital.getImage(),hid);
	}

	@Override
	public void deleteHospital(String hid) {
		String SQL ="delete from hospital where hid='"+hid+"'";
		template.update(SQL);
		
	}
	
}
