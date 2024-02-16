package com.springmvc.domain;

import java.io.Serializable;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class PetSurgeryAfter implements Serializable {
	
	private int petSurgeryAfterNum;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petSurgeryDateAfter ;
	private String petSurgeryContentAfter ;
	private String petId;
	
	public PetSurgeryAfter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getPetSurgeryAfterNum() {
		return petSurgeryAfterNum;
	}



	public void setPetSurgeryAfterNum(int petSurgeryAfterNum) {
		this.petSurgeryAfterNum = petSurgeryAfterNum;
	}



	public LocalDate getPetSurgeryDateAfter() {
		return petSurgeryDateAfter;
	}

	public void setPetSurgeryDateAfter(LocalDate petSurgeryDateAfter) {
		this.petSurgeryDateAfter = petSurgeryDateAfter;
	}

	public String getPetSurgeryContentAfter() {
		return petSurgeryContentAfter;
	}

	public void setPetSurgeryContentAfter(String petSurgeryContentAfter) {
		this.petSurgeryContentAfter = petSurgeryContentAfter;
	}

	public String getPetId() {
		return petId;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}

	
	
}
