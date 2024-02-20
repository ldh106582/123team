package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hospital")
public class HospitalController {

	@GetMapping
	public String hospital() 
	{
		return "Hospital/Hospital";
	}
	
	@GetMapping("/create")
	public String hospitalcreate() 
	{
		System.out.println("create");
		return "Hospital/Hospital";
	}
}
