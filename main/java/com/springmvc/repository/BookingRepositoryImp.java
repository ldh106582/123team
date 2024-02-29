package com.springmvc.repository;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.HospitalBooking;

@Repository
public class BookingRepositoryImp implements BookingRepository{
	
	private JdbcTemplate template;
	
	@Autowired
	public void setJdbcTemplate(DataSource dataSource) 
	{
		this.template = new JdbcTemplate(dataSource);
	}

	String SQL = null;
	@Override
	public List<HospitalBooking> getMyBookList(String personId) {
		SQL = "select * from HApllication where personId='"+personId+"'";
		List<HospitalBooking> list = template.query(SQL, new BookingRowMapper());
		return list;
	}
	@Override
	public void addbook(HospitalBooking booking) {
		SQL = "insert into HApllication values(?,?,?,?,?,?,?,?,?)";
		template.update(SQL,booking.getRegistDay(),booking.getPersonId(),getBid(),booking.getMid(),booking.getHospitalName(),booking.getHid(),booking.getPetName(),booking.getContext(),"처리중");
		
	}
	private String getBid() {
		String str = Long.toString(System.currentTimeMillis());
		return str;
	}
	
	@Override
	public void editbook(String bid, String registDay) {
		SQL = "update HApllication set registDay=? where bid='"+bid+"'";
		template.update(SQL,registDay);
		
	}
	@Override
	public void deletebook(String bid) {
		SQL = "delete from HApllication where bid='"+bid+"'";
		template.update(SQL);
	}
	
}
