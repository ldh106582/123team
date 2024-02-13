package com.springmvc.service;

import com.springmvc.domain.Booking;

public interface BookingService {
	
	void setNewBooking(Booking booking);
	void SetUpdateBooking(Booking booking);
	Booking getBookingname(String name);
}
