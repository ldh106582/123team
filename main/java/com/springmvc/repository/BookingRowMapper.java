package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Booking;

public class BookingRowMapper implements RowMapper<Booking>{
	
	@Override
	public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
		Booking booking = new Booking();
		booking.setNumber(rs.getInt(1));
		booking.setPetname(rs.getString(2));
		booking.setPetbreed(rs.getString(3));
		booking.setAge(rs.getInt(4));
		booking.setPetgender(rs.getString(5));
		booking.setName(rs.getString(6));
		booking.setPhone(rs.getString(7));
		booking.setText(rs.getString(8));
		return booking;
	}
}
