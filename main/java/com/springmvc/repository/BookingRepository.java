package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Booking;

public interface BookingRepository {
	List<Booking> getBookingList();
	void setNewBooking(Booking booking);
	public List<Booking> getAllBookingList();
	void SetUpdateBooking(Booking booking);
	Booking getBookingname(String name);
}
