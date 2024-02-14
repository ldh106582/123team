package com.springmvc.domain;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class PetSurgery {
	
	private int petSurgeryNum;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate PetSurgeryDate ;
	private String PetSurgeryName ;
	private String PetSurgeryContent ;
	private String petId;
	public PetSurgery() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LocalDate getPetSurgeryDate() {
		return PetSurgeryDate;
	}
	
	public int getPetSurgeryNum() {
		return petSurgeryNum;
	}
	public void setPetSurgeryNum(int petSurgeryNum) {
		this.petSurgeryNum = petSurgeryNum;
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
	public String getPetId() {
		return petId;
	}
	public void setPetId(String petId) {
		this.petId = petId;
	}
	
	
}
