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
		String SQL = "";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		return null;
	}

}
