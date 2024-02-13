package com.springmvc.repository;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class PetSurgeryAfter {
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate PetSurgeryAfterDate ;
	private String PetSurgeryAfterContent ;
	public PetSurgeryAfter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LocalDate getPetSurgeryAfterDate() {
		return PetSurgeryAfterDate;
	}
	public void setPetSurgeryAfterDate(LocalDate petSurgeryAfterDate) {
		PetSurgeryAfterDate = petSurgeryAfterDate;
	}
	public String getPetSurgeryAfterContent() {
		return PetSurgeryAfterContent;
	}
	public void setPetSurgeryAfterContent(String petSurgeryAfterContent) {
		PetSurgeryAfterContent = petSurgeryAfterContent;
	}
	

	
}
