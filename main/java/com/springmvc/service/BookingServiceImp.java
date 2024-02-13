package com.springmvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Booking;
import com.springmvc.repository.BookingRepository;

@Service
public class BookingServiceImp implements BookingService{
	
	@Autowired
	private BookingRepository bookingrepository;
	
	@Override
	public void setNewBooking(Booking booking) {
		bookingrepository.setNewBooking(booking);
	}
	
	@Override
	public void SetUpdateBooking(Booking booking) {
		bookingrepository.SetUpdateBooking(booking);
	}
	
	@Override
	public Booking getBookingname(String name) {
		Booking bookingbyname = bookingrepository.getBookingname(name);
		return bookingbyname;
	}

}
