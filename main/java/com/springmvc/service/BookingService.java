package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.HospitalBooking;

public interface BookingService {

	List<HospitalBooking> getMyBookList(String personId);

	void addbook(HospitalBooking booking);

	void editbook(String bid, String registDay);

	void deletebook(String bid);
	
	
}
