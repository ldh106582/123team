package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.service.HospitalService;

@Controller
@RequestMapping("/hospitals")
public class HospitalController {

	@Autowired
	HospitalService hospitalService;
	
	@GetMapping
	public String getAllhospitals(Model model) 
	{
		model.addAttribute("hospitals",hospitalService.getAllhospitals());
		return "Hospital/hospitals";
	}
	
	@GetMapping("hospital")
	public String hospital(@RequestParam("hid") String hid,Model model)
	{
		
		return "Hospital/hospital";
	}
	
	@GetMapping("/create")
	public String hospitalcreate() 
	{
		System.out.println("create");
		return "Hospital/hospital";
	}
	
}