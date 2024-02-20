package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Booking;

@Repository
public class BookingRepositoryImp implements BookingRepository{
	
	private List<Booking> listOfBooking = new ArrayList<Booking>();
	private JdbcTemplate template;
	
	@Autowired
	public void setJdbcTemplate(DataSource dataSource) 
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	//예약정보 가져오기
	@Override
	public List<Booking> getBookingList()  
	{
		String SQL = "SELECT * FROM Booking";
		List<Booking> listOfBookings = template.query(SQL, new BookingRowMapper());
		return listOfBookings;
	}
	
	@Override
	public List<Booking> getAllBookingList() {
		String SQL = "SELECT * FROM Booking";
		List<Booking> listOfBooking = template.query(SQL, new BookingRowMapper());
		return listOfBooking;
	}
	
	@Override
	public void setNewBooking(Booking booking) {
		
		String SQL = "INSERT INTO Booking(Number,PetName,PetBreed,PetAge,PetGender,Name,Phone,Text)"+"VALUES(?,?,?,?,?,?,?,?)";
		template.update(SQL,booking.getNumber(),booking.getPetname(),booking.getPetbreed(),booking.getAge(),booking.getPetgender(),booking.getName(),booking.getPhone(),booking.getText());
	}
	
	@Override
	public void SetUpdateBooking(Booking booking) {
		if(booking.getName() !=null) 
		{
			System.out.println("updateRepository");
			String SQL = "UPDATE Booking SET PetName=?,PetBreed=?,PetAge=?,PetGender=?,Name=?,Phone=?,Text=?";
			template.update(SQL,booking.getNumber(),booking.getPetname(),booking.getPetbreed(),booking.getAge(),booking.getPetgender(),booking.getName(),booking.getPhone(),booking.getText());
		}
		else 
		{
			System.out.println("찾을수 없음");
		}
		
		
	}
	@Override
	public Booking getBookingname(String name) {
		Booking bookinginfo = null;
		String SQL = "SELECT count(*) FROM Booking where Name=?";
		int rowCount = template.queryForObject(SQL, Integer.class,name);
		if(rowCount != 0) 
		{
			SQL = "SELECT * FROM Booking where name =?";
			bookinginfo = template.queryForObject(SQL, new Object[] {name},new BookingRowMapper());
		}
		if (bookinginfo == null)
			throw new IllegalArgumentException("아이디를 찾을수 없습니다");
		
		return bookinginfo;
	}
}
