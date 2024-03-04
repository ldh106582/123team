package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.HospitalBooking;

public interface BookingRepository {

	List<HospitalBooking> getMyBookList(String personId);

	void addbook(HospitalBooking booking);

	void editbook(String bid, String registDay);

	void deletebook(String bid);

	List<HospitalBooking> getPermisionList(String personId);

	void updateState(String dec, String bid);
	
}
