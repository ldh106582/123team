package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.domain.Booking;
import com.springmvc.repository.BookingRepository;
import com.springmvc.service.BookingService;

@Controller
@RequestMapping("/booking")
public class BookingController {
	
	@Autowired
	private BookingService bookingservice;
	
	
	//예약 폼 이동
	@GetMapping
	public String BookingForm(@ModelAttribute("booking") Booking booking,Model model) 
	{	
		return "Booking/BookingAddForm";
	}
	@GetMapping("/search")
	public String requestByname(@RequestParam("name") String name,Model model) 
	{
		Booking bookingbyname = bookingservice.getBookingname(name);
		System.out.println(bookingbyname);
		model.addAttribute("name", bookingbyname);
		
		return "Booking/BookingSearch";
	}
	//예약 추가
	@PostMapping
	public String BookingAdd(@ModelAttribute("booking") Booking booking ,Model model,BindingResult result) 
	{
		bookingservice.setNewBooking(booking);
		return "Booking/BookingSearch";
	}
	//업데이트
	@GetMapping("/update")
	public String getUpdateBookingform(@ModelAttribute("updateBooking") Booking booking, @RequestParam("name") String name, Model model) 
	{
		return "Booking/bookingupdateForm";
	}

	
}
