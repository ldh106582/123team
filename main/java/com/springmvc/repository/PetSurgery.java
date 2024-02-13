package com.springmvc.repository;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class PetSurgery {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate PetSurgeryDate ;
	private String PetSurgeryName ;
	private String PetSurgeryContent ;
	public PetSurgery() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LocalDate getPetSurgeryDate() {
		return PetSurgeryDate;
	}
	public void setPetSurgeryDate(LocalDate petSurgeryDate) {
		PetSurgeryDate = petSurgeryDate;
	}
	public String getPetSurgeryName() {
		return PetSurgeryName;
	}
	public void setPetSurgeryName(String petSurgeryName) {
		PetSurgeryName = petSurgeryName;
	}
	public String getPetSurgeryContent() {
		return PetSurgeryContent;
	}
	public void setPetSurgeryContent(String petSurgeryContent) {
		PetSurgeryContent = petSurgeryContent;
	}
	
	
}
