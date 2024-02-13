package com.springmvc.domain;

import java.io.Serializable;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class PetSurgeryAfter implements Serializable {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petSurgeryDateAfter ;
	private String petSurgeryContentAfter ;
	
	public PetSurgeryAfter() {
		super();
		// TODO Auto-generated constructor stub
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

	
	
}
